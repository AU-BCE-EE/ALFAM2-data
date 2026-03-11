# Combine new (sub.period 4) with old data

# First plot-level data
# Rename some old columns (add these later if needed)
# And drop others

# Combine
pdat.comb <- rbind(pdat, pdat.old, fill = TRUE)

## Checks:
## Columns missing in new data
#names(pdat.old)[!names(pdat.old) %in% intersect(names(pdat), names(pdat.old))]
## Columns missing in old data
#names(pdat)[!names(pdat) %in% intersect(names(pdat), names(pdat.old))]
## Columns missing in combined data
#names(pdat)[!names(pdat) %in% intersect(names(pdat), names(pdat.comb))]
