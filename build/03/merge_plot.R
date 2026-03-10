# Combine new (sub.period 3) with old data

# First plot-level data
# Rename some old columns
names(pdat.old)[names(pdat.old) %in% c('first.row.in.file', 'last.row.in.file')] <- c('first.row.in.file.int', 'last.row.in.file.int')
names(pdat.old)[names(pdat.old) == 'row.in.file'] <- 'row.in.file.plot'
names(pdat.old)[names(pdat.old) == 'database'] <- 'sub.period'
names(pdat.old)[names(pdat.old) == 'notes'] <- 'notes.plot'
names(pdat.old)[names(pdat.old) == 'flag'] <- 'flag.plot'

# And drop others
pdat.old$man.freeNH3 <- pdat.old$man.eq.gasNH3 <- NULL

# Combine
pdat.comb <- rbindf(pdat, pdat.old)

## Checks:
## Columns missing in new data
#names(pdat.old)[!names(pdat.old) %in% intersect(names(pdat), names(pdat.old))]
## Columns missing in old data
#names(pdat)[!names(pdat) %in% intersect(names(pdat), names(pdat.old))]
## Columns missing in combined data
#names(pdat)[!names(pdat) %in% intersect(names(pdat), names(pdat.comb))]
