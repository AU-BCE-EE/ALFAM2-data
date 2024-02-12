# Calculate weather means

library(readxl)

na.strings <- c('', 'NA', 'na', 'Na', 'NaN')

file <- '../ALFAM2_template_7.0_META_METHA_Vf.xlsx'
nms <- c('proj', 'exper', 'field', 'plot', 'treat', 'rep', 'interval', 't.start', 't.end', 'dt', 
                 'meas.tech', 'meas.tech.det', 'bg.dl', 'bg.val', 'bg.unit', 'j.NH3', 'j.NH3.unit', 'pH.surf', 
                 'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'soil.temp.surf', 
                 'rad', 'wind', 'wind.z', 
                 # Check these
                 'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit', 'rain', 'rh', 'wind.loc', 'far.loc', 'notes.int')

wnms <- c('air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 
          'soil.temp.surf', 'rad', 'wind', 'wind.z', 
          'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit', 
          'rain', 'rh')

# Emission
emis <- read_xlsx(file, sheet = 7, skip = 4, col_names = nms, na = na.strings)
emis <- data.frame(emis)
emis$row.in.file.int <- 1:nrow(emis) + 4
emis <- emis[rowSums(!is.na(emis)) > 1, ]

# Weather
wthr <- read_xlsx(file, sheet = 12, skip = 4, col_names = nms, na = na.strings)
wthr <- data.frame(wthr)
wthr$row.in.file.int <- 1:nrow(wthr) + 4
wthr <- wthr[rowSums(!is.na(wthr)) > 1, ]

wthr$wind
wthr$air.temp
class(wthr$t.end)
class(emis$t.end)


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
