# Combine new (uptake 3) with old data

# First plot-level data
# Rename some old columns
names(pdat.old)[names(pdat.old) %in% c('first.row.in.file', 'last.row.in.file')] <- c('first.row.in.file.int', 'last.row.in.file.int')
names(pdat.old)[names(pdat.old) == 'database'] <- 'uptake'

# Columns missing in new data
names(pdat.old)[!names(pdat.old) %in% intersect(names(pdat), names(pdat.old))]
# Columns missing in old data
names(pdat)[!names(pdat) %in% intersect(names(pdat), names(pdat.old))]
pdat.old[, c('')] <- NA

# And drop others
pdat.old$man.freeNH3 <- pdat.old$man.eq.gasNH3 <- NULL

# Combine
pdat.comb <- rbind(pdat[, names(pdat.old)], pdat.old)

# Sort
pdat.comb <- pdat.comb[order(pdat.comb$pmid), ]

# Interval-level data
idat.old$man.freeNH3 <- idat.old$man.eq.gasNH3 <- NULL

# Rename some old columns
names(idat.old)[names(idat.old) == 'row.in.file'] <- 'row.in.file.int'
names(idat.old)[names(idat.old) == 'database'] <- 'uptake'

# Combine
idat.comb <- rbind(idat[, names(idat.old)], idat.old)

# Round to keep file size < 100 MB (GitHub limit)
idat.comb <- rounddf(idat.comb, 4, func = signif)

# Sort
idat.comb <- idat.comb[order(idat.comb$pmid, idat.comb$int), ]
