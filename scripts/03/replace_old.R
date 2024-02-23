# Remove old NL results that have been updated in uptake 3

pdat.nl <- pdat.comb[pdat.comb$country == 'NL', ]
print(table(pdat.nl$exper, pdat.nl$uptake))

# Get new results
exper.new <- pdat.nl[pdat.nl$uptake == 3, 'exper']

# Find old ones
pmid.old <- pdat.nl[pdat.nl$exper %in% exper.new & pdat.nl$uptake == 2, 'pmid']

# Remove old pmid
pdat.up <- pdat.nl[!pdat.nl$pmid %in% pmid.old, ]
print(table(pdat.up$exper, pdat.up$uptake))

print(dim(pdat.comb))
print(dim(idat.comb))
pdat.comb <- pdat.comb[!pdat.comb$pmid %in% pmid.old, ]
idat.comb <- idat.comb[!idat.comb$pmid %in% pmid.old, ]
print(dim(pdat.comb))
print(dim(idat.comb))
