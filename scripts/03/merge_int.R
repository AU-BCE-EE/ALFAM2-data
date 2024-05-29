# Combine old and new interval-level data

# Interval-level data
# Remove some old columns
idat.old$man.freeNH3 <- idat.old$man.eq.gasNH3 <- NULL

# Rename some old columns
names(idat.old)[names(idat.old) == 'row.in.file'] <- 'row.in.file.int'
names(idat.old)[names(idat.old) == 'database'] <- 'sub.period'
names(idat.old)[names(idat.old) == 'notes'] <- 'notes.int'
names(idat.old)[names(idat.old) == 'flag'] <- 'flag.int'

# Combine
idat.comb <- rbindf(idat, idat.old)

# Add int suffix to weather height info (because it is also in plot data frame, pulled from emis row 1)
nn <- c('soil.temp.z', 'air.temp.z', 'wind.z', 'wind.loc', 'far.loc')
names(idat.comb)[names(idat.comb) %in% nn] <- paste0(nn, '.int')

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
