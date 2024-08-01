# Check for errors and create a log before merge

for (i in names(dat)) {
  for (j in names(dat[[i]])) {

    # Check for errors and create log with details
    # Note: the Rmd file overwrites object 'dd', so keep this script for last if possible
    fn <- strsplit(j, '/')
    fn <- fn[[1]][length(fn[[1]])]
    fn <- sub('\\.xlsx$', '', fn)
    inst <- dat[[i]][[j]]$submitter$inst.abbrev
    submitter <- dat[[i]][[j]]$submitter$submitter

    # Add institute and submitter to file name
    fn <- paste0(inst, '_', submitter, '_', fn)
    fn <- gsub(',', '_', fn)
    fn <- gsub(' ', '_', fn)
    fn <- gsub('__', '_', fn)

    ## Check and make institution directory if needed
    #idir <- paste0('../../logs/03/html/', inst, '-', gsub(' |,', '_', submitter))
    #if (!dir.exists(idir)) {
    #  dir.create(idir)
    #}

    # Skip if log file already exists unless all were requested
    if (!file.exists(paste0('../../logs/03/html/', fn, '.html')) | alllogs) { 
      options(warn = 1) 
      render('check_sub.Rmd', output_file = fn, output_dir = '../../logs/03/html/', quiet = TRUE)
      options(warn = 2) 
    } 

    if (exists('newsubmission')) { 
      cat('Stopping after check_sub.Rmd because new file has been read in!\nManually move on if desired, otherwise comment out and rm() newsubmission in main.R')
      stop('Stopping after check_sub.Rmd because new file has been read in!\nManually move on if desired, otherwise comment out and rm() newsubmission in main.R')
    }

  }
}


