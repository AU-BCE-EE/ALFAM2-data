# Get weather data for checking values
# Suspect a unit error
# This work done in fall 2026
# See issue #71 https://github.com/AU-BCE-EE/ALFAM2-data/issues/71

library(jsonlite)
library(data.table)

# Time bins
bins <- fread('bins.csv')
bins[, start := as.POSIXct(start, format = '%d-%m-%Y %H:%M')]
bins[, end := as.POSIXct(end, format = '%d-%m-%Y %H:%M')]

for (i in 1:nrow(bins)) {
for (i in 1:10) {

    print(i)

  bd <- bins[i, ]

  lat <- bd$lat
  lon <- bd$lon
  
  start <- format(bd$start, format = '%Y-%m-%d')
  end <- format(bd$end, format = '%Y-%m-%d')
  
  u <- paste0("https://archive-api.open-meteo.com/v1/archive?",
              "latitude=", lat, "&longitude=", lon,
              "&start_date=", start, "&end_date=", end,
              "&hourly=wind_speed_10m,wind_direction_10m",
              "&wind_speed_unit=ms&timezone=GMT&models=era5")
  
  x <- fromJSON(u)
  
  d <- data.table(lat = lat, lon = lon, time = as.POSIXct(x$hourly$time, format = "%Y-%m-%dT%H:%M", tz = "UTC"),
                     ws = x$hourly$wind_speed_10m, wd = x$hourly$wind_direction_10m)

  d[, wind.2m := ws * log(2.0 / 0.01) / log(ws / 0.01)]

  d <- d[time >= bd$start & time <= bd$end, ]

  bins[i, wind.2m := mean(d$wind.2m)]

}
