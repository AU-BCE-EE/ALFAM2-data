# Check for errors and create a log before merge

for (i in names(dat)) {
  for (j in names(dat[[i]])) {

    # Check for errors and create log with details
    # Note: the Rmd file overwrites 'dd', so keep this last if possible
    fn <- strsplit(j, '/')
    fn <- fn[[1]][length(fn[[1]])]
    fn <- sub('\\.xlsx$', '', fn)
    inst <- dat[[i]][[j]]$submitter$inst.abbrev
    options(warn = 1) 
    render('error_check.Rmd', output_file = paste0(inst, '_', fn, '.html'), output_dir = '../../logs/03', quiet = TRUE)
    options(warn = 2) 

  }
}


