# Calculate averages

pdatl <- melt(pdat, id.vars = c('country', 'man.source'), 
              measure.vars = c('man.ph', 'man.dm', 'app.rate', 'air.temp.24', 'wind.24', 'rain.rate.24'))
pdatl <- pdatl[!is.na(value) & man.source %in% c('cat', 'pig'), ]

# Mean by country
cdat <- pdatl[, .(mn = mean(value), md = median(value), n = sum(!is.na(value))), 
              by = .(country, man.source, variable)]

# And then overall
sdat <- cdat[, .(mean_overall = mean(mn), med_overall = median(md), n_obs = sum(n), 
                 n_country = .N, s_overall = sd(mn), s_overall_md = sd(md)), by = .(man.source, variable)]

sdat <- rounddf(sdat, c(0, 0, 1, 1, 0, 0, 2, 2))

# And overall ignoring source of manure (only applies to weather data!)
odat <- cdat[variable %in% c('air.temp.24', 'wind.24', 'rain.rate.24'), 
             .(mean_overall = mean(mn), med_overall = median(md), n_obs = sum(n), 
             n_country = .N, s_overall = sd(mn), s_overall_md = sd(md)), by = .(variable)]

odat <- rounddf(odat, c(0, 1, 1, 0, 0, 2, 2))

