# Runs precip extraction, and makes a log
# Only this script should be run


sink('precip_log.txt')
  source('get_precip.R', echo = TRUE)
sink()
