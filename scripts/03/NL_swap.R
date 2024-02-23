# Remove old NL results that have been updated in uptake 3

# Old IMAG experiment codes are missing B or G at beginning
pdat.comb[pdat.comb$institute == 'IMAG' & pdat.comb$crop == 'grass', 'exper'] <- paste0('G', pdat.comb[pdat.comb$institute == 'IMAG' & pdat.comb$crop == 'grass', 'exper'])

# Missing 0 in 2 uptake 2 experiment codes
pdat.comb[pdat.comb$country == 'NL' & pdat.comb$exper == 'G2000-8', 'exper'] <- 'G2000-08'
pdat.comb[pdat.comb$country == 'NL' & pdat.comb$exper == 'G2000-9', 'exper'] <- 'G2000-09'

pdat.nl <- pdat.comb[pdat.comb$country == 'NL' & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.nl$exper, pdat.nl$uptake))
print(table(pdat.nl$crop, pdat.nl$uptake, exclude = NULL))

# Get new results
exper.new <- pdat.nl[pdat.nl$uptake == 3, 'exper']

# Find matching old ones that should be swapped out
pmid.old <- pdat.nl[pdat.nl$exper %in% exper.new & pdat.nl$uptake %in% 1:2, 'pmid']

# Remove old pmid
print(dim(pdat.comb))
print(dim(idat.comb))
pdat.comb <- pdat.comb[!pdat.comb$pmid %in% pmid.old, ]
idat.comb <- idat.comb[!idat.comb$pmid %in% pmid.old, ]
print(dim(pdat.comb))
print(dim(idat.comb))

pdat.nl <- pdat.comb[pdat.comb$country == 'NL' & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.nl$exper, pdat.nl$uptake))
print(table(pdat.nl$crop, pdat.nl$uptake, exclude = NULL))

# Which ones are remaining from uptakes 1 and 2?
pdat.remain <- pdat.comb[pdat.comb$uptake %in% 1:2 & grepl('IMAG|NMI|WUR', pdat.comb$institute), ]
print(table(pdat.remain$exper, pdat.remain$uptake))
print(table(pdat.remain$crop, pdat.remain$uptake, exclude = NULL))


