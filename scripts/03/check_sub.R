# Check for errors and create a log before merge

for (i in names(dat)) {
  for (j in names(dat[[i]])) {

    # Check for errors and create log with details
    # Note: the Rmd file overwrites 'dd', so keep this script for last if possible
    fn <- strsplit(j, '/')
    fn <- fn[[1]][length(fn[[1]])]
    fn <- sub('\\.xlsx$', '', fn)
    inst <- dat[[i]][[j]]$submitter$inst.abbrev
    submitter <- dat[[i]][[j]]$submitter$submitter

    # Check and make institution directory if needed
    idir <- paste0('../../logs/03/html/', inst, '-', gsub(' |,', '_', submitter))
    if (!dir.exists(idir)) {
      dir.create(idir)
    }

    options(warn = 1) 
    render('check_sub.Rmd', output_file = paste0(inst, '_', fn, '.html'), output_dir = idir, quiet = TRUE)
    options(warn = 2) 

  }
}


