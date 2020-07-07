# Gets precipitation data

library(gdata)
library(lubridate)
library(plyr)
library(txtplot)

# Get ALFAM data
d <- read.xls('../ALFAM2_draft_07-1.xlsx', sheet = 1, skip = 7, header = FALSE, as.is = TRUE)
# In case there are extra columns, drop them
d <- d[, 1:71]

#pubs <- read.xls(file, sheet = 4, skip = 2, header = FALSE, as.is = TRUE)

# Column types
# Note furrow measurements are character to be more flexible (some input data are character, see AAFC)
# Fartherst measurement location also character for, e.g., MU who entered "Field"
cc <- c(rep('character', 7), rep('character', 2), rep('character', 2), 'integer', rep('character', 4), 'numeric', 'character', 'numeric', 'character', 'numeric', 'character', rep('numeric', 4), 'character', 'numeric', 'character', 'numeric', 'numeric', 'character', 'character', rep('numeric', 9), wind.loc = 'character', farthest.loc = 'character', rep('character', 5), rep('numeric', 7), 'character', 'character', 'numeric', rep('character', 3), rep('numeric', 2), furrowdepth = 'character', furrowwidth= 'character', 'character', rep('numeric', 3), 'character')

# Column names
cn <- c('proj', 'pub.id', 'exper', 'field', 'plot', 'treat', 'rep', 'lat', 'long', 'long.dir', 'topo', 'interval', 't.start', 't.end', 'dt', 'meas.tech', 'plot.area', 'bg.dl', 'bg.val', 'bg.unit', 'j.NH3', 'j.NH3.unit', 'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.water', 'soil.moist', 'soil.ph', 'soil.dens', 'crop.res', 'till', 'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'rad', 'wind', 'wind.z', 'rain', 'rh', 'wind.loc', 'far.loc', 'man.source', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.stor', 'man.dm', 'man.tkn', 'man.tan', 'man.tic', 'man.ua', 'man.ph', 'app.start', 'app.method', 'app.rate', 'app.rate.unit', 'incorp', 'time.incorp', 'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 'crop', 'crop.z', 'crop.area', 'lai', 'notes')

# Helps with finding problems in column type vector
#cbind(1:length(cc), cn, cc)

# Assign column types
for(i in 1:ncol(d)) {
  d[, i] <- eval(parse(text = paste0('as.', cc[i], '(d[, i])')))
}

# Column names
names(d) <- cn

d$row.in.file <- 1:nrow(d)

d$t.start <- dmy_hm(d$t.start)
d$t.end <- dmy_hm(d$t.end)

# Make relative time to make merging easier
# Note times are rounded to eliminate issue with splitting up rain intervals
t0 <- min(d$t.start)
d$t.end.h <- round(as.numeric(difftime(d$t.end, t0, units = 'hours')), 0)
d$t.start.h <- round(as.numeric(difftime(d$t.start, t0, units = 'hours')), 0)

# Get precip
# Inconsistent file data argh!
d1 <- read.table('Precipitation 1-2 may 2014.csv', sep = ';', header = TRUE)
d2 <- read.table('Precipitation 1-3 april 2014.csv', sep = ';', dec = ',', header = TRUE)
d3 <- read.table('Precipitation 13th april 2014 Foulum.csv', sep = ';', header = TRUE)
d4 <- read.table('Precipitation 30 april 2014.csv', sep = ';', header = TRUE)

dfsumm(d1)
dfsumm(d2)
dfsumm(d3)
dfsumm(d4)

names(d1)[1] <- names(d2)[1] <- names(d4)[1] <- 'station'

head(d1)
head(d2)
head(d3)
head(d4)

rd <- rbindf(d1, d2, d3, d4)
dfsumm(rd)

rd$time <- sprintf('%02d', rd$time)
rd$time <- paste0(rd$time, ':00')

rd$date.time <- dmy_hm(paste(rd$date, rd$time))

rd$t.end.h <- round(as.numeric(difftime(rd$date.time, t0, units = 'hours')), 0)
rd$t.start.h <- rd$t.end.h - 1

# Look for duplicates--would mean wrong rain totals!
sort(rd$t.end.h)
sum(duplicated(rd$t.end.h))

rd <- rd[!duplicated(rd$date.time), ]
sum(duplicated(rd$t.end.h))

rd <- rd[order(rd$t.end.h), ]
rd

# Drop earlier times
rd <- rd[rd$t.end.h < t0, ]


# Fill in rain data
head(rd)
d$rain <- NA

for(i in 1:nrow(d)) {
  
  t.start <- d$t.start.h[i]
  t.end <- d$t.end.h[i]

  precip <- sum(rd$prec[rd$t.end.h <= t.end & rd$t.start.h >= t.start])

  d$rain[i] <- precip

}

# Sort to be safe
d <- d[order(d$row.in.file), ]

# Export
write.csv(d, 'ALFAM_dat_w_rain.csv', row.names = FALSE)

# Check
x <- subset(d, exper == 'B1' & plot == '1')
txtplot(x$t.start.h, x$rain)

x <- subset(d, exper == 'B1' & plot == 'A')
txtplot(x$t.start.h, x$rain)
txtplot(rd$t.start.h, rd$prec)
x

sum(rd$prec)
ddply(d, c('exper', 'plot'), summarise, rain.tot = sum(rain))
sum(d$rain)
