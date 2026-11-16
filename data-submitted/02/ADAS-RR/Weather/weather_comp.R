# Get and summarize weather data for checking original values
# Suspect a unit error
# This work done in fall 2026
# See issue #71 https://github.com/AU-BCE-EE/ALFAM2-data/issues/71
# Claude Code helped with a lot of this code

library(jsonlite)
library(data.table)
library(ggplot2)

# Time bins
# Parse as UTC to match the GMT times requested from Open-Meteo below
bins <- fread('weather_submitted_bins.csv')
bins[, row.in.file := 1:nrow(bins) + 9]
bins[, start := as.POSIXct(start, format = '%d-%m-%Y %H:%M', tz = 'UTC')]
bins[, end := as.POSIXct(end, format = '%d-%m-%Y %H:%M', tz = 'UTC')]

# One request per site, covering all of its bins
sites <- bins[, .(start = min(start), end = max(end)), by = .(lat, lon)]

wx <- list()
for (i in 1:nrow(sites)) {

  print(i)

  sd <- sites[i, ]

  u <- paste0("https://archive-api.open-meteo.com/v1/archive?",
              "latitude=", sd$lat, "&longitude=", sd$lon,
              "&start_date=", format(sd$start, '%Y-%m-%d'),
              "&end_date=", format(sd$end, '%Y-%m-%d'),
              "&hourly=wind_speed_10m,wind_direction_10m,temperature_2m",
              "&wind_speed_unit=ms&timezone=GMT&models=era5")

  x <- fromJSON(u)

  wx[[i]] <- data.table(lat = sd$lat, lon = sd$lon,
                        time = as.POSIXct(x$hourly$time, format = "%Y-%m-%dT%H:%M", tz = "UTC"),
                        ws = x$hourly$wind_speed_10m, wd = x$hourly$wind_direction_10m,
                        air.temp = x$hourly$temperature_2m)

  Sys.sleep(1)

}

wx <- rbindlist(wx)

# Log wind profile from 10 m down to 2 m, roughness length 0.01 m
wx[, wind.2m := ws * log(2.0 / 0.01) / log(10.0 / 0.01)]

# Export detailed measurements to pick up later here without downloading
fwrite(wx, 'weather_download.csv')

# Mean wind and air temperature for each bin
# Non-equi join: for each row of bins, match wx rows from the same site with start <= time <= end,
# then by = .EACHI calculates mean() separately for each bins row
# Both ERA5 variables are instantaneous values at the top of each hour
# This is a merge and summary in one step
# Non-equi join where we often get more than one row merging into one in bins. Oof. I am getting old and dumb.
bins[, c('wind.2m', 'air.temp') := wx[bins, on = .(lat, lon, time >= start, time <= end),
                                      .(wind.2m = mean(wind.2m), air.temp = mean(air.temp)),
                                      by = .EACHI][, .(wind.2m, air.temp)]]

# Bins that contain no top-of-hour time get NA from the join above
# For these, interpolate linearly between hourly values to the bin midpoint
bins[, mid := start + (end - start) / 2]
bins[, wx.interp := is.na(wind.2m)]
# by = .(lat, lon) runs the {} block once per site, and .BY holds that site's lat and lon,
# so wx[.BY, on = .(lat, lon)] picks out the hourly data for the same site
bins[wx.interp == TRUE, c('wind.2m', 'air.temp') := {
  w <- wx[.BY, on = .(lat, lon)]
  list(approx(w$time, w$wind.2m, xout = mid)$y,
       approx(w$time, w$air.temp, xout = mid)$y)
}, by = .(lat, lon)]
bins[, mid := NULL]

bins[, wind.error := wind.rep / wind.2m]
bins[, temp.error := air.temp - air.temp.rep]

# Export
fwrite(bins, 'weather_output_bins.csv')

# Mean ratio by plot
summ <- bins[, .(wind.error = median(wind.error), temp.error = median(temp.error)), by = .(exper, field, plot, trt, rep)]

ggplot(bins, aes(wind.2m, wind.rep, colour = wind.loc)) +
    geom_point() +
    geom_abline(intercept = 0, slope = 1) +
    theme_bw()
ggsave('wind_comp.png')

ggplot(bins, aes(air.temp, air.temp.rep, colour = factor(far.loc))) +
    geom_point() +
    geom_abline(intercept = 0, slope = 1) +
    theme_bw()
ggsave('wind_comp.png')

