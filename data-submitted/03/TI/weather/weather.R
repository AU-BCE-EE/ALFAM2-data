# Calculate weather means to add to INRAE data file

rm(list = ls())

library(data.table)

na.strings <- c('', 'NA', 'na', 'Na', 'NaN')

# Weather file made from "climate...xls" with ssconvert
# ssconvert climate_data_GülleBest_20240415.xlsx weather.csv
wfile <- 'weather.csv'
efile <- 'emis.csv.6'
nms <- c('proj', 'exper', 'field', 'plot', 'treat', 'rep', 'interval', 't.start', 't.end', 'dt', 
                 'meas.tech', 'meas.tech.det', 'bg.dl', 'bg.val', 'bg.unit', 'j.NH3', 'j.NH3.unit', 'pH.surf', 
                 'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'soil.temp.surf', 
                 'rad', 'wind', 'wind.z', 
                 'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit', 'rain', 'rh', 'wind.loc', 'far.loc', 'notes.int')

wnms <- c('proj', 'field', 'date', 'time', 'soil.temp', 'x1', 'air.temp', 'x2', 'wind', 'x3', 'pres', 'x4', 'x5', 'rain', 'x6', 'x7') 

# Emission (intervals)
emis <- fread(efile, skip = 4, col.names = nms, na.strings = na.strings)
emis <- data.frame(emis)
emis$row.in.file.int <- 1:nrow(emis) + 4
emis <- emis[rowSums(!is.na(emis)) > 1, ]

emis$t.start <- as.POSIXct(emis$t.start, format = '%Y/%m/%d %H:%M:%S')
emis$t.end <- as.POSIXct(emis$t.end, format = '%Y/%m/%d %H:%M:%S')

# Fix emis fields
emis$field <- gsub(':', '-', emis$field)

# Weather
wthr <- fread(wfile, skip = 4, col.names = wnms, na.strings = na.strings)
wthr <- data.frame(wthr)
wthr$row.in.file.int <- 1:nrow(wthr) + 1
wthr <- wthr[rowSums(!is.na(wthr)) > 1, ]

# Subset only to fields in emis
wthr <- subset(wthr, field %in% unique(emis$field))

wthr$wind <- as.numeric(wthr$wind)
wthr$air.temp <- as.numeric(wthr$air.temp)
wthr$rain <- as.numeric(wthr$rain)
wthr$soil.temp <- as.numeric(wthr$soil.temp)

wthr$t.end <- as.POSIXct(paste(wthr$date, wthr$time), format = '%Y/%m/%d %H:%M:%S')
wthr <- wthr[order(wthr$field, wthr$t.end), ]
for (i in unique(wthr$field)) {
  wthr[wthr$field == i, 't.start'] <- c(wthr[wthr$field == i, 't.end'][1], wthr[wthr$field == i, 't.end'][-nrow(wthr[wthr$field == i, ])])
}

# Check fields
table(wthr$field)
table(emis$field)

class(wthr)
class(emis)

# Get means for these weather variables
wnms <- c('air.temp', 'soil.temp', 'wind')

# Calculate means for each interval
i <- 1
for (i in 1:nrow(emis)) {

  field <- emis[i, 'field']
  wstart <- emis[i, 't.start']
  wend <- emis[i, 't.end']

  wd <- wthr[wthr$field == field & wthr$t.end <= wend & wthr$t.start >= wstart, ]

  for (j in wnms) {
    emis[i, j] <- signif(mean(na.omit(wd[, j])), 3)
  }

  # Use sum for rain
  j <- 'rain'
  emis[i, j] <- signif(sum(na.omit(wd[, j])), 4)

}

## 1000 adjustment for radiation
#emis[, 'rad'] <- 1000 * emis[, 'rad']

# Export weather results by interval
expnms <- c('row.in.file.int', wnms)
write.csv(emis[, expnms], 'weather_means.csv', row.names = FALSE)
