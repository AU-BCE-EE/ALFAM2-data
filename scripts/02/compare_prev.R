# Compare new version of data to previous version

do <- read.csv('../../archive/1.4/ALFAM2_interval.csv')
dso <- read.csv('../../archive/1.4/ALFAM2_plot.csv')

# Sort in identical way
d  <-  d[order( d$inst,  d$file,  d$row.in.file), ]
do <- do[order(do$inst, do$file, do$row.in.file), ]

# Dimensions must match
dim(d)
dim(do)

# pmid should match
sum(d$pmid != do$pmid)
sum(d$pid != do$pid)
sum(d$oid != do$oid)

# Institute must match
sum(d$inst != do$inst)

# And measurements should match
sum(na.omit(d$j.NH3) != na.omit(do$j.NH3))
#sum(na.omit(d$e.cum) != na.omit(do$e.cum))
sum(na.omit(d$e.cum != do$e.cum))

# ct may not match if fixed
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

# pmid should match
sum(ds$pmid != dso$pmid)
sum(na.omit(ds$e.final) != na.omit(dso$e.final))

## Run below if present
#ii <- which(na.omit(ds$e.final) != na.omit(dso$e.final))
#
#cbind(ds[ii, 'e.final'], dso[ii, 'e.final'])
## Looks like rounding issue
