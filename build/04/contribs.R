# Sort out cumulative contributors

# Previous period cumulative contributors
oldcontribs <- fread(paste0('../../contributors/output/', sprintf('%02d', old.sub.period), '/contributors.csv'))

# Manual contributors
mancontribs <- fread(paste0('../../contributors/manual/contributors.csv'))

# Stack both with current period contributors
contribs <- rbind(contribs, oldcontribs, mancontribs, fill = TRUE)

# Remove duplicates, but leave same name different sub.period etc.
contribunq <- unique(contribs)

# Subset to unique names, ignoring other columns
contribnms <- unique(contribs[, .(contributor)])

# Sort and export
setorder(contribunq, contributor)
setorder(contribnms, contributor)
fwrite(contribunq, paste0('../../contributors/output/', sprintf('%02d', sub.period), '/contributors.csv'))
fwrite(contribnms, paste0('../../contributors/output/', sprintf('%02d', sub.period), '/contributor_names.csv'))

