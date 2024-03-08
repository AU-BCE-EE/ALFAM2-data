# Add plot and institute ID codes to new data

# Get original pmid from latest GitHub release

p <- paste0('https://github.com/sashahafner/ALFAM2-data/raw/v', oldrelease)
pdatr <- as.data.frame(data.table::fread(paste0(p, '/data-output/03/ALFAM2_plot.csv.gz'))[uptake == 3, .(uptake, institute, proj, file, exper, field, plot, treat, rep, rep2, app.start, meas.tech, meas.tech.det, pid, pmid, eid)])

dim(pdatr)
dim(pdat)

# Extract and reuse old institution codes
inst.old <- unique(pdat.old[, c('institute', 'inst')])
pdat <- merge(pdat, inst.old, by = 'institute', all.x = TRUE)

# Sort out institution codes for ones with changed names
pdat$inst[pdat$institute == 'INRAE'] <- inst.old$inst[inst.old$institute == 'INRA']

# Create completely new 300s codes for new institutes
# Note placement of indexing on RHS to avoid a 301 that is later skipped (or similar dropped inst values)
pdat$inst[is.na(pdat$inst)] <- 300 + as.integer(factor(pdat$institute[is.na(pdat$inst)]))

table(pdat$inst)

# ID codes created in plots data frame and then merged into interval level data frame
# First add ones already created in earlier release, to avoid changing existing keys with every release
# For all, start with 1 + previous maximum from old (uptake 1 + 2 *and* last uptake 3 release (if any were actually merged in above))
pdat <- merge(pdat, pdatr, all.x = TRUE)
# Experiment ID (includes uptake, inst, proj, exper)
pdat$eid[is.na(pdat$eid)] <- as.integer(factor(pdat$ceid[is.na(pdat$eid)])) + max(c(pdat.old$eid, na.omit(pdat$eid)))
# Add plot and plot x meas tech IDs
pdat$pid[is.na(pdat$pid)] <- as.integer(factor(pdat$cpid[is.na(pdat$pid)])) + max(c(pdat.old$pid, na.omit(pdat$pid)))
pdat$pmid[is.na(pdat$pmid)] <- as.integer(factor(pdat$cpmid[is.na(pdat$pmid)])) + max(c(pdat.old$pmid, na.omit(pdat$pmid)))

# Merge IDs into interval level data
# Should alternatively be able to switch to interger directly in idat
idat <- merge(idat, pdat[, c('cpmid', 'eid', 'pid', 'pmid')], by = c('cpmid'), all.x = TRUE)

# Add observation ID
# Is not copied from earlier uptake but because any new obs (should) have a large pmid, they will also have a higher oid
idat <- idat[order(idat$pmid, idat$int), ]
idat$oid <- 1:nrow(idat) + max(idat.old$oid)

