# Sort out cumulative contributors

# Manual contributors (covers periods 1-3 contributors not captured in submissions)
mancontribs <- read.csv('../../contributors/manual/contributors.csv')

# Stack period 3 contributors with manual list
contribs.all <- rbindf(contribs, mancontribs)

# Remove duplicates
contribunq <- unique(contribs.all)
contribnms <- unique(contribs.all[, 'contributor', drop = FALSE])

# Sort and export
contribunq <- contribunq[order(contribunq$contributor), ]
contribnms <- contribnms[order(contribnms$contributor), , drop = FALSE]

odir <- paste0('../../contributors/output/', sprintf('%02d', sub.period))
if (!dir.exists(odir)) dir.create(odir, recursive = TRUE)
write.csv(contribunq, file.path(odir, 'contributors.csv'), row.names = FALSE)
write.csv(contribnms, file.path(odir, 'contributor_names.csv'), row.names = FALSE)
