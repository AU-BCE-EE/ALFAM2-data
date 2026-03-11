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
  idir <- paste0('../../logs/04/csv/', inst, '-', gsub(' |,', '_', submitter))
  if (!dir.exists(idir)) {
    dir.create(idir)
  }

  rounddt(pds, 3, func = signif)
  fwrite(pds, file = paste0(idir, '/', inst, '_', fn, '_plot.csv.gz'))
  rounddt(ids, 3, func = signif)
  fwrite(ids, file = paste0(idir, '/', inst, '_', fn, '_interval.csv.gz'))

}

