# Add plot and institute ID codes to new data

# Extract and reuse old institute codes
inst.old <- unique(pdat.old[, c('institute', 'inst')])
pdat <- merge(pdat, inst.old, by = 'institute', all.x = TRUE)

# Create completley new 300s codes for new institutes
# NTS: needs tweak to leave out inst codes already recognized so e.g., 301 is not skipped
pdat$inst[is.na(pdat$inst)] <- 300 + as.integer(factor(pdat$institute))[is.na(pdat$inst)]

# ID codes created in plots data frame and then merged into interval level data frame
# Experiment ID
pdat$eid <- as.integer(factor(pdat$ceid)) + max(pdat.old$eid)
# Add plot and plot x meas tech IDs
pdat$pid <- as.integer(factor(pdat$cpid)) + max(pdat.old$pid)
pdat$pmid <- as.integer(factor(pdat$cpmid)) + max(pdat.old$pmid)

# Merge into interval level data
idat <- merge(idat, pdat[, c('institute', 'file', 'exper', 'inst', 'eid', 'pid', 'pmid')], by = c('institute', 'file', 'exper'), all.x = TRUE)

# Add observation ID
idat <- idat[order(idat$pmid, idat$int), ]
idat$oid <- 1:nrow(idat) + max(idat.old$oid)

