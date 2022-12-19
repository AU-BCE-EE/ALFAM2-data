# Sort out eGylle 2 and 3 weather measurements


library(data.table)
library(lubridate)

idat <- as.data.frame(fread('../../../../../data-output/03/ALFAM2_interval.csv.gz'))
pdat <- as.data.frame(fread('../../../../../data-output/03/ALFAM2_plot.csv.gz'))


idat <- merge(idat, pdat[, c('pmid', 'exper', 'file')], by = 'pmid')

idat$t.start <- ymd_hms(idat$t.start)
idat$t.end <- ymd_hms(idat$t.end)

# Get weather data
dw <- subset(idat, exper %in% c('eGylle2', 'eGylle3') & !is.na(air.temp))

plot(air.temp ~ t.start, data = dw, type = 'b', subset = exper == 'eGylle2')
plot(air.temp ~ t.start, data = dw, type = 'b', subset = exper == 'eGylle3')

# Data that are missing weather
# mc = method comp experiments (with DTM etc)
dmc <- subset(idat, grepl('eGylle_NL_DE_JK', file))

i <- 82
for (i in 1:nrow(dmc)) {

  ts <- dmc$t.start[i]
  te <- dmc$t.end[i]

  j <- which(dw$t.start >= ts & dw$t.end <= te)

  k <- 'air.temp'
  for (k in c('air.temp', 'wind.2m', 'rain.rate', 'air.temp.z.int')) {
    dmc[i, k] <- mean(dw[j, k], na.rm = TRUE)
  }

}

# Arrange for pasting back into Excel sheet
# Need data.frame to do this

rownames(dmc) <- as.character(dmc$row.in.file)
dmc <- dmc[as.character(1:max(dmc$row.in.file)), ]

# Export for copy/paste into Excel file
write.csv(dmc, 'weather_output.csv', row.names = FALSE)
