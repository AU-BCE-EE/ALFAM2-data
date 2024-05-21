# Remove old NL results that have been updated in sub.period 3
# Note: Sub/correction period info, and whole correction is very much tailored to sub.period 3 and the new data from NL
# Note: It may not transfer at all to higher sub.periods

#x <- pdat.comb[pdat.comb$sub.period == 1 & pdat.comb$country == 'NL', ]
#x$sub.period
#x$institute
#x$exper

# Old IMAG experiment codes are missing B or G at beginning
pdat.comb[pdat.comb$institute == 'IMAG' & pdat.comb$crop == 'grass', 'exper'] <- paste0('G', pdat.comb[pdat.comb$institute == 'IMAG' & pdat.comb$crop == 'grass', 'exper'])

# Missing 0 in 2 sub.period 2 experiment codes
pdat.comb[pdat.comb$country == 'NL' & pdat.comb$exper == 'G2000-8', 'exper'] <- 'G2000-08'
pdat.comb[pdat.comb$country == 'NL' & pdat.comb$exper == 'G2000-9', 'exper'] <- 'G2000-09'

pdat.nl <- pdat.comb[pdat.comb$country == 'NL' & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.nl$exper, pdat.nl$sub.period))
print(table(pdat.nl$crop, pdat.nl$sub.period, exclude = NULL))

# Get new results
exper.new <- pdat.nl[pdat.nl$sub.period == 3, 'exper']

# Find matching old ones that should be swapped out
pmid.old <- pdat.nl[pdat.nl$exper %in% exper.new & pdat.nl$sub.period %in% 1:2, 'pmid']

# Find sub.periods (original, could be 1 or 2) for new experiments
exper.old.in.new <- merge(unique(pdat.nl[pdat.nl$sub.period %in% 1:2, c('exper', 'sub.period')]), 
                          pdat.nl[pdat.nl$sub.period == 3, c('exper', 'pmid')],
                          by = 'exper')
exper.old.in.new$corr.period <- 3

## Sort out old experiments that are being replaced, to update sub.period
#exper.old <- unique(pdat.nl[pdat.nl$sub.period %in% 1:2, 'exper'])
#exper.old.in.new <- exper.old[exper.old %in% exper.new]

# Remove old pmid
print(dim(pdat.comb))
print(dim(idat.comb))
pdat.comb <- pdat.comb[!pdat.comb$pmid %in% pmid.old, ]
idat.comb <- idat.comb[!idat.comb$pmid %in% pmid.old, ]
print(dim(pdat.comb))
print(dim(idat.comb))

# Set sub.period/period
pdat.comb <- merge(pdat.comb, exper.old.in.new, by = 'pmid', all.x = TRUE, suffixes = c('', '.nlmerge'))
# nrow should not change
print(dim(pdat.comb))
# Check--should all be TRUE
all(na.omit(pdat.comb$exper == pdat.comb$exper.nlmerge))
# Use old sub.period values
pdat.comb[!is.na(pdat.comb$sub.period.nlmerge), 'sub.period'] <- pdat.comb[!is.na(pdat.comb$sub.period.nlmerge), 'sub.period.nlmerge']

pdat.nl <- pdat.comb[pdat.comb$country == 'NL' & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.nl$exper, paste(pdat.nl$corr.period, pdat.nl$sub.period)))
print(table(pdat.nl$sub.period))
print(table(pdat.nl$crop, pdat.nl$sub.period, exclude = NULL))

# Which ones are remaining from sub.periods 1 and 2?
pdat.remain <- pdat.comb[is.na(pdat.comb$corr.period) & pdat.comb$sub.period %in% 1:2 & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.remain$exper, pdat.remain$sub.period))
print(table(pdat.remain$crop, pdat.remain$sub.period, exclude = NULL))


