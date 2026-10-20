# Drop some lines, potentially for different reasons

# eid 342 because of a duplication issue (#68 https://github.com/AU-BCE-EE/ALFAM2-data/issues/68)
pmid.drop <- unique(pdat.comb[eid == 342,][['pmid']])
pdat.comb <- pdat.comb[eid != 342, ]
idat.comb <- idat.comb[! pmid %in% pmid.drop, ]
