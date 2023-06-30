# Sort out DTM data
# Calculate interval average flux from reported cumulative emission

library(data.table)

dat <- fread('DTM_DK_2021_cumloss_new.csv', sep = ';', skip = 2)

dat[, date.time := as.POSIXct(V11, format = '%d.%m.%Y %H:%M', tz = 'UTC')]
dat[, plot := V28]
dat[, e.cum := V32]

# Start and end date.time
# First rows will be dropped 
dat[, t.start := c(date.time[1], date.time[- .N]), by = plot]
dat[, t.end := date.time]

# Average flux
dat[, dt := as.numeric(difftime(t.end, t.start), units = 'hours'), by = plot]
dat[, e.int := c(0, diff(e.cum)), by = plot]
dat[, j.NH3 := e.int / dt, by = plot]

# Change date format
dat[, t.end := as.character(t.end, format = '%d-%m-%Y %H:%M')]
dat[, t.start := as.character(t.start, format = '%d-%m-%Y %H:%M')]

# Drop nonsense first obs with 0 cum emis
res <- dat[e.cum > 0, .(plot, t.start, t.end, j.NH3)]

# Export
fwrite(res, 'export.csv')
