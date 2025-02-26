# Calculate averages

pdatl <- melt(pdat, id.vars = c('country'), measure.vars = c('man.ph', 'man.dm', 'air.temp.24', 'wind.24', 'rain.rate.24'))
pdatl <- pdatl[!is.na(value), ]

# Mean by country
cdat <- pdatl[, .(mn = mean(value), n = sum(!is.na(value))), by = .(country, variable)]

# And then overall
sdat <- cdat[, .(mean_overall = mean(mn), n_country = .N, s_overall = sd(mn)), by = variable]

sdat <- rounddf(sdat, c(0, 1, 0, 2))
