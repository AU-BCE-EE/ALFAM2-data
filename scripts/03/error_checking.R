# Error checking in database
# S. Hafner

library(plyr)

source('../functions/ALFAM_functions.R')

# Read in data
d <- read.csv('../data - ALFAM2 output/ALFAM2_interval.csv')
d <- fixALFAMCSV(d)
ds <- read.csv('../data - ALFAM2 output/ALFAM2_plot.csv')

# Summary to scan for errors
dfsumm(d)

# Missing incorporation times
table(ds$incorp, ds$time.incorp, exclude = NULL)
x <- subset(ds, incorp %in% c('deep', 'shallow') & is.na(time.incorp))
unique(as.character(x$file))
x[, c('file','first.row.in.file','institute')]

# Fixed
# Problems with application start time, was problem in the merge of d1 and d2
# Should be POSIXct/POSIXt
class(d$app.start)

## Fixed
# Wind heights in wrong units
# Should be in m
# Expected values maybe 0.1 - 10 m
summary(d$wind.z)
range(na.omit(d$wind.z))
x <- subset(d, wind.z>15)
nrow(x)
unique(as.character(x$file))
unique(x[,c('file','row.in.file','institute')])
unique(x[,c('file','institute')])

## Fixed
# Air temperature heights
# Also in m now
# Expected values perhaps 0.1 - 10 m
summary(d$air.temp.z)
range(na.omit(d$air.temp.z))
x <- subset(d, air.temp.z>10)
nrow(x)
unique(as.character(x$file))
unique(x[,c('file','row.in.file','institute')])
unique(x[,c('file','institute')])

# Why are there zeroes?
x <- subset(d, air.temp.z == 0)
nrow(x)
unique(as.character(x$file))
unique(x[,c('file', 'row.in.file', 'institute', 'air.temp.z', 'air.temp')])
unique(x[,c('file', 'institute', 'air.temp.z')])
# Not sure, but there they are all in ALFAM1. Leaving as-is

# Measurement techniques
# There should be zero NAs!
as.character(unique(d$meas.tech))
table(d$meas.tech, exclude = NULL)
sum(is.na(d$meas.tech))

## Fixed now
## agm has a space after it in some cases
#x <- unique(d[, c('file','institute','meas.tech')])
#subset(x, meas.tech=='agm ')
## Also is given as "aerodynamic gradient"
#subset(x, meas.tech=='aerodynamic gradient')

## Fixed now, was modelled values in French data
## Blank method
#x <- unique(d[,c('file','institute','meas.tech','row.in.file')])
#subset(x,meas.tech=='')

# Emission measurements before application time (app.start)
x <- subset(d,t.start < app.start)
x <- x[order(x$file,x$row.in.file),]
dim(x)
x[,c('file','row.in.file', 't.start', 't.end', 'app.start', 'ct', 'field','plot', 'tan.app', 'j.NH3')]
# These are cases where emission was measured before application
# As long as emission is clearly low and ct < 0, there is no indication of a problem
# For Swiss data at end, application occurred within the first interval
# Similar for SDU--apparently application was after the passive samplers were set out

# Negative interval duration dt
x <- subset(d, dt < 0)
dim(x)
x[,c('file','row.in.file', 't.start', 't.end', 'app.start', 'dt', 'ct', 'field','plot', 'tan.app', 'j.NH3')]

# Duplicated shifts
# Should be none
s <- ddply(d, 'pmid', summarise, n.int.duplicates = sum(duplicated(interval)))
x <- subset(s, n.int.duplicates > 1)
x
y <- subset(d, pmid == x$pmid)
y[, c('file', 'inst', 'institute', 'row.in.file', 'plot', 'rep', 'rep2')]

# Shift time mismatches
# Should be none
y <- d[order(d$pmid, d$interval), ]
# Problem when one shift ends after the next begins
y$problem <- c(y$pmid[-nrow(y)] == y$pmid[-1] & y$t.end[-nrow(y)] > y$t.start[-1], NA)
y$overlap <- c(as.numeric(difftime(y$t.end[-nrow(y)], y$t.start[-1], units = 'hours')), NA)
x <- subset(y, problem)
x[, c('file', 'inst', 'institute', 'row.in.file', 'plot', 't.start', 't.end', 'interval', 'j.NH3', 'overlap')]

# Very short sets
x <- subset(ds, n.ints < 4)
dim(x)
y <- subset(d, pmid %in% x$pmid)
y <- y[order(y$institute, y$row.in.file), ]
dim(y)
y[, c('file', 'inst', 'institute', 'row.in.file', 'plot', 'pmid', 't.start', 't.end', 'ct', 'interval', 'j.NH3')]
# 108 (JTI) has one value per plot
# 105 (IGER) seems to just have two plots with only three intervals (24 hr). From the file they look OK.
# 103 (CRPA) also just seems to have some plots with 2 or 3 intervals

# High relative emission
x <- subset(ds, e.rel.final>1)
dim(x)
x[, c('file', 'inst', 'institute', 'first.row.in.file', 'plot', 'pmid', 'tan.app', 'e.rel.final', 'e.rel.48')]
# No obvious problems here
# IGER value of 5+ probably related to very low application rate of 2 kg N/ha

## Problems with incorporation
## In make_database.R NAs are set to 'None',  so problems will not show up here. Need to check this
#y <- subset(d, is.na(incorp) | incorp=='')
#dim(y)
#y <- y[order(y$institute, y$row.in.file), ]
#y <- rounddf(y)
#write.csv(y[, c('database', 'institute', 'nid', 'file', 'row.in.file', 'incorp', 'time.incorp')], 'incorp_NA.csv', row.names=FALSE)

# Missing locations
x <- subset(d, is.na(d$lat)|is.na(d$long))
x <- data.frame(file=unique(x$file))
x

# Missing slurry type
x <- subset(d, is.na(man.source))
unique(x$institute)
unique(x[, c('institute', 'man.source.orig')])
x

# These all are probably measurements made with no application or prior to application
# Need to remove from database if the latter
# Missing application method
x <- subset(d, is.na(app.method))
unique(x$institute)
x <- subset(d, is.na(app.method) & man.source != 'none')
x[, c('institute', 'file', 'row.in.file', 'app.method.orig', 'app.method', 'app.rate', 'man.source')]
x

# Missing soil type
x <- subset(d, is.na(soil.type))
unique(x$institute)
unique(x[, c('institute', 'soil.type', 'soil.type2')])
x

# Missing crop
# Only with no manure for INRA, plus many for SDU
x <- subset(d, is.na(crop))
unique(x$institute)
unique(x[, c('institute', 'crop', 'crop.orig', 'man.source')])
x[, c('institute', 'file', 'row.in.file', 'crop')]

x <- subsetd(d, dt == 0)
dim(x)


# Fixed 6 April 2016, was problem in weighted mean code in functions file
# Rel humidity and air.temp zero too often, are they missing values?
x <- subsetd(d, air.temp == 0)
y <- subsetd(ds, air.temp.12 == 0)
dim(x)
dim(y)

## How can y >> x???
#hist(ds$air.temp.12)

table(y$inst)

# Some heights seem to be a mix of cm and m
names(d)[grepl('\\.z', names(d))]

# Everything should be in m now
sort(unique(d$air.temp.z))
sort(unique(d$soil.temp.z))
sort(unique(d$wind.z))

# Except crop height
sort(unique(d$crop.z))
        
