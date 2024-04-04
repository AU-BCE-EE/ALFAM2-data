# Remove old NL results that have been updated in sub.period 3
# Note: Sub/correction period info, and whole correction is very much tailored to sub.period 3 and the new data from NL
# Note: It may not transfer at all to higher sub.periods

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

# Sort out old experiments that are being replaced, to update sub.period
exper.old <- unique(pdat.nl[pdat.nl$sub.period %in% 1:2, 'exper'])
exper.old.in.new <- exper.old[exper.old %in% exper.new]

# Remove old pmid
print(dim(pdat.comb))
print(dim(idat.comb))
pdat.comb <- pdat.comb[!pdat.comb$pmid %in% pmid.old, ]
idat.comb <- idat.comb[!idat.comb$pmid %in% pmid.old, ]
print(dim(pdat.comb))
print(dim(idat.comb))

# Set sub.period/period
pmid.corrected <- pdat.comb[pdat.comb$exper %in% exper.old.in.new & grepl('IMAG|NMI|WUR', pdat.comb$institute), 'pmid']
pdat.comb[pdat.comb$sub.period == 3 & pdat.comb$pmid %in% pmid.corrected, 'sub.period'] <- 2
pdat.comb$corr.period <- NA
pdat.comb[pdat.comb$pmid %in% pmid.corrected, 'corr.period'] <- 3

pdat.nl <- pdat.comb[pdat.comb$country == 'NL' & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.nl$exper, pdat.nl$sub.period))
print(table(pdat.nl$sub.period))
print(table(pdat.nl$crop, pdat.nl$sub.period, exclude = NULL))

# Which ones are remaining from sub.periods 1 and 2?
pdat.remain <- pdat.comb[pdat.comb$sub.period %in% 1:2 & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.remain$exper, pdat.remain$sub.period))
print(table(pdat.remain$crop, pdat.remain$sub.period, exclude = NULL))


