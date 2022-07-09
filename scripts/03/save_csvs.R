# Saves a copy of plot and internval data by flie
# Main purpose is to have a text-based (works with Git) record of submitted data

for (i in unique(pdat$file)) {

  fn <- strsplit(i, '/')
  fn <- fn[[1]][length(fn[[1]])]
  fn <- sub('\\.xlsx$', '', fn)

  pds <- subset(pdat, file == i)
  pp <- unique(pds$pmid)
  ids <- subset(idat.comb, pmid %in% pp)

  inst <- pds$institute[1]
  submitter <- pds$submitter[1]

  # Check and make institution directory if needed
  idir <- paste0('../../logs/03/csv/', inst, '-', gsub(' |,', '_', submitter))
  if (!dir.exists(idir)) {
    dir.create(idir)
  }

  write.csv(rounddf(pds, func = signif, digits = 3), file = paste0(idir, '/', inst, '_', fn, '_plot.csv'), row.names = FALSE)
  write.csv(rounddf(ids, func = signif, digits = 3), file = paste0(idir, '/', inst, '_', fn, '_interval.csv'), row.names = FALSE)

}

