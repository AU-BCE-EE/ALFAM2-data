# Check that all columns in the output data files are described in variables/ CSVs

ivar <- data.table::fread('../../variables/interval-level_variables.csv')
pvar <- data.table::fread('../../variables/plot-level_variables.csv')

# Variables like e.6, e.24 etc. are documented as e.(time) -- normalize both sides
pnames <- gsub('\\.[0-9]+$', '\\.(time)', names(pdat.comb))
inames <- gsub('\\.[0-9]+$', '\\.(time)', names(idat.comb))
pvar$Name <- gsub('\\.[0-9]+$', '\\.(time)', pvar$Name)
ivar$Name <- gsub('\\.[0-9]+$', '\\.(time)', ivar$Name)

# Missing from variable definition files
mph <- unique(pnames)[!unique(pnames) %in% pvar$Name]
mih <- unique(inames)[!unique(inames) %in% ivar$Name]

# Defined but no longer in the data (stale entries)
rph <- pvar$Name[!pvar$Name %in% pnames]
rih <- ivar$Name[!ivar$Name %in% inames]

cat('Variable definition check results\n\n')

cat('1. Missing from plot-level variable file: ')
cat(if (length(mph) > 0) mph else 'none')

cat('\n\n2. Missing from interval-level variable file: ')
cat(if (length(mih) > 0) mih else 'none')

cat('\n\n3. Stale entries in plot-level variable file: ')
cat(if (length(rph) > 0) rph else 'none')

cat('\n\n4. Stale entries in interval-level variable file: ')
cat(if (length(rih) > 0) rih else 'none')

cat('\n')

if (length(c(mph, mih, rph, rih)) > 0) {
  warning('Variable definition mismatch! See make_database_log.txt for details.')
}
