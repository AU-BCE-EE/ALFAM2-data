
# Interval-level data
# Remove some old columns
idat.old$man.freeNH3 <- idat.old$man.eq.gasNH3 <- NULL

# Rename some old columns
names(idat.old)[names(idat.old) == 'row.in.file'] <- 'row.in.file.int'
names(idat.old)[names(idat.old) == 'database'] <- 'uptake'
names(idat.old)[names(idat.old) == 'notes'] <- 'notes.int'
names(idat.old)[names(idat.old) == 'flag'] <- 'flag.int'

# Combine
idat.comb <- rbindf(idat, idat.old)

# Order and select columns for database distribution
# Note that objective is to keep file size small, so most columns in plot-level data frame are excluded
idat.comb <- idat.comb[order(idat.comb$pmid, idat.comb$int), 
  c('pid', 'pmid', 'oid', 
    'row.in.file.int', 
    'interval', 't.start', 't.end', 't.start.orig', 't.end.orig', 'dt', 'dt.calc', 'dt.diff', 'ct', 'mt', 'cta', 'bta', 
    'bg.dl', 'bg.val', 'bg.unit', 
    'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit',
    'j.NH3', 'j.rel', 
    'e.int', 'e.cum', 'e.rel', 
    'air.temp',
    'soil.temp', 
    'soil.temp.surf', 
    'pH.surf', 
    'rad', 'wind', 'wind.2m', 
    'soil.temp.z', 'air.temp.z', 'wind.z', 'wind.loc', 'far.loc', 
    'rain', 'rain.rate', 'rain.cum', 
    'rh', 
    'notes.int', 'flag.int')]

# Add int suffix to weather height info (because it is also in plot data frame, pulled from emis row 1)
nn <- c('soil.temp.z', 'air.temp.z', 'wind.z', 'wind.loc', 'far.loc')
names(idat.comb)[names(idat.comb) %in% nn] <- paste0(nn, '.int')

# Round 
idat.comb <- rounddf(idat.comb, 5, func = signif)

## Checks
## Columns missing in new data
#names(idat.old)[!names(idat.old) %in% intersect(names(idat), names(idat.old))]
## Columns missing in old data
#names(idat)[!names(idat) %in% intersect(names(idat), names(idat.old))]
## Columns from new data missing in combined data
#names(idat)[!names(idat) %in% intersect(names(idat), names(idat.comb))]
#
## Check for names intersection with plot-level data frame, should only be those to be used for merge 
#names(idat.comb)[names(idat.comb) %in% intersect(names(idat.comb), names(pdat.comb))]
