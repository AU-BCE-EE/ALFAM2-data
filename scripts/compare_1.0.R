# Compare new version of data to old

do <- read.csv('../../archive/1.0/ALFAM_interval.csv')
dso <- read.csv('../../archive/1.0/ALFAM2_plot.csv')

# Sort in identical way
d  <-  d[order( d$inst,  d$file,  d$row.in.file), ]
do <- do[order(do$inst, do$file, do$row.in.file), ]

# Dimensions must match
dim(d)
dim(do)

# pmid will not match now
sum(d$pmid != do$pmid)
sum(d$pid != do$pid)
sum(d$oid != do$oid)

# Institute must
sum(d$inst != do$inst)

# And measurements should
sum(na.omit(d$j.NH3) != na.omit(do$j.NH3))
#sum(na.omit(d$e.cum) != na.omit(do$e.cum))

# ct should no longer match
sum(d$ct != do$ct)
# But interval should
sum(d$interval != do$interval)

# Check plot-level file
table(dso$inst)
table(ds$inst)

ds <- ds[order(ds$inst, ds$file, ds$first.row.in.file), ]
dso <- dso[order(dso$inst, dso$file, dso$first.row.in.file), ]

dim(ds)
dim(dso)

# pmid will not match now
sum(ds$pmid != dso$pmid)
sum(na.omit(ds$e.final) != na.omit(dso$e.final))
ii <- which(na.omit(ds$e.final) != na.omit(dso$e.final))

cbind(ds[ii, 'e.final'], dso[ii, 'e.final'])
# Looks like rounding issue
