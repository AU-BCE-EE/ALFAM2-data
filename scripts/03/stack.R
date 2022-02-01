# Combine new (uptake 3) with old data

mn <- names(pdat.old)[!names(pdat.old) %in% intersect(names(pdat), names(pdat.old))]
mn

# Rename some old columns
names(pdat.old)[names(pdat.old) %in% c('first.row.in.file', 'last.row.in.file')] <- c('first.row.in.file.int', 'last.row.in.file.int')

# Fill in some columns no longer used, just to be explicit about it
pdat$exper2 <- NA
pdat$rep2 <- NA
