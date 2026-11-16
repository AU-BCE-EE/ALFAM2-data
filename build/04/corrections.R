# Make some corrections, for various reasons
# Quite free-form here; different problems may have different solutions

# 1. Drop duplicates ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# eid 342 because of a duplication issue (#68 https://github.com/AU-BCE-EE/ALFAM2-data/issues/68)
pmid.drop <- unique(pdat.comb[eid == 342,][['pmid']])
pdat.comb <- pdat.comb[eid != 342, ]
idat.comb <- idat.comb[! pmid %in% pmid.drop, ]
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 2. Replace sub period 2 ADAS-RR weather data ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# See issue #71
# Load new data
wnew <- fread('../../data-submitted/02/ADAS-RR/Weather/weather_output_bins.csv')
# Select only needed columns, and add file name for merge
wnew <- wnew[, .(row.in.file, air.temp, wind.2m)]
wnew[, file := 'ALFAM2_ADAS_RRes_v2.xlsx']

# Find oid of rows that need changing
# Requires file name for this
pmid.cor <- pdat.comb[file == 'ALFAM2_ADAS_RRes_v2.xlsx', pmid]
oid.cor <- idat.comb[pmid %in% pmid.cor, oid]

# Do in-place correction, replacing air.temp and wind.2m with new values for this file
# Use new correction column just to merge by file ADAS...
idat.comb[, correction := oid %in% oid.cor]
wnew[, correction := TRUE]

# Save original wind values to check for a change
wind.orig <- idat.comb[correction == TRUE, wind.2m]

idat.comb[wnew, on = .(correction, row.in.file.int = row.in.file), wind.2m := i.wind.2m]
wind.new <- idat.comb[correction == TRUE, wind.2m]
# Set all wind (not height-adjusted) variables to NA
idat.comb[correction == TRUE, wind := NA]
# Add note and flag
idat.comb[correction == TRUE, notes.int := paste(notes.int, 'Wind values downloaded and updated in 2026. See Weather dir in 02 subdir for original submission')]
idat.comb[correction == TRUE, flag.int := collapseFlags(paste(flag.int, 'w'))]
idat.comb[, correction := NULL]

# Check plot manually
#plot(wind.new, wind.orig)

if(any(wind.orig == wind.new)) {
  stop('ADAS wind speed update did not work!')
}

# Recalculate plot-level wind.2m variables
pdat.cor <- pdat.comb[pmid %in% pmid.cor, ]
idat.cor <- idat.comb[pmid %in% pmid.cor, ]
pdat.cor <- interpPlotVars(
  pdat.cor,
  idat.cor,
  what = c('wind.2m'),
  time_points = c(1, 4, 6, 12, 24, 48, 72, 96, 168),
  id = 'pmid'
)

# Remove wind values
tp <- c(1, 4, 6, 12, 24, 48, 72, 96, 168)
drop.cols <- paste0('wind', '.', c(tp, 'mn'))
pdat.cor[, (drop.cols) := NULL]

# Add note and flag
pdat.cor[, notes.plot := paste(notes.plot, 'Wind values downloaded and updated in 2026. See Weather dir in 02 subdir for original submission')]
pdat.cor[, flag.plot := collapseFlags(paste(flag.plot, 'w'))]

# Combine back into pdat
pdat.comb <- rbind(pdat.comb[!pmid %in% pmid.cor, ], pdat.cor, fill = TRUE)
setorder(pdat.comb, pmid)
