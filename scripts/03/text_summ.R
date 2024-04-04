# Make text plot summaries for sub.period 3 only

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
  idir <- paste0('../../logs/03/text/', inst, '-', gsub(' |,', '_', submitter))
  if (!dir.exists(idir)) {
    dir.create(idir)
  }

  knit('text_summ.Rmd', output = paste0(idir, '/', inst, '_', fn, '.md'), quiet = TRUE)

}
