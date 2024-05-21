# Calculate weather means to add to INRAE data file

library(readxl)
library(data.table)

na.strings <- c('', 'NA', 'na', 'Na', 'NaN')

wfile <- 'climate_data_GülleBest_20240415.xlsx'
efile <- 'ALFAM2_template_7.0_GülleBest_BW_HOH_20240415.xlsx'
nms <- c('proj', 'exper', 'field', 'plot', 'treat', 'rep', 'interval', 't.start', 't.end', 'dt', 
                 'meas.tech', 'meas.tech.det', 'bg.dl', 'bg.val', 'bg.unit', 'j.NH3', 'j.NH3.unit', 'pH.surf', 
                 'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'soil.temp.surf', 
                 'rad', 'wind', 'wind.z', 
                 'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit', 'rain', 'rh', 'wind.loc', 'far.loc', 'notes.int')

wnms <- c('proj', 'field', 'date', 'time', 'soil.temp', 'x1', 'air.temp', 'x2', 'wind', 'x3', 'pres', 'x4', 'x5', 'rain', 'x6', 'x7') 

# Emission (intervals)
emis <- read_xlsx(efile, sheet = 7, skip = 4, col_names = nms, na = na.strings)
emis <- data.frame(emis)
emis$row.in.file.int <- 1:nrow(emis) + 4
emis <- emis[rowSums(!is.na(emis)) > 1, ]

# Weather
wthr <- read_xlsx(wfile, sheet = 1, skip = 4, col_names = wnms, na = na.strings)
wthr <- data.frame(wthr)
wthr$row.in.file.int <- 1:nrow(wthr) + 1
wthr <- wthr[rowSums(!is.na(wthr)) > 1, ]

wthr <- data.table(wthr)
wthr[, wind := as.numeric(wind)]
wthr[, air.temp := as.numeric(air.temp)]

wthr$wind
wthr$air.temp

# Calculate means for each interval
for (i in 1:nrow(emis)) {

  wstart <- emis[i, 't.start'] + 3600
  wend <- emis[i, 't.end']

  wd <- wthr[wthr$t.end <= wend & wthr$t.end >= wstart, ]

  for (j in wnms) {
    emis[i, j] <- signif(mean(na.omit(wd[, j])), 3)
  }

  # Use sum for rain
  j <- 'rain'
  emis[i, j] <- signif(sum(na.omit(wd[, j])), 3)

}

# 1000 adjustment for radiation
emis[, 'rad'] <- 1000 * emis[, 'rad']


# Export weather results by interval
expnms <- c('row.in.file.int', wnms)
write.csv(emis[, expnms], 'weather_means.csv', row.names = FALSE)
