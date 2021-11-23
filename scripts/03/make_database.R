# 

# Date record
print(Sys.time())

# Read and check data from files
ddir <- list.dirs('../../data - submitted/03', recursive = FALSE)
dat <- list()
for(i in ddir) {
  cat('Directory ', i,'\n')
  f <- list.files(i, pattern = 'xls', full.names = TRUE)
  # Omit temporary Excel files (created when main file is open)
  f <- f[!grepl('\\/~', f)]
  dat[[i]] <- list()
  for(j in f) {
    print(j)
    cat('   file ', j,'\n')
    dd <- readALFAM2File(j)
    # Simple error check to save searching
    check4missing(dd)
    # Basic data cleaning
    dd <- cleanALFAM(dd)
    # Calculate emission (including merge with plot df, adding c*id)
    dd <- calcEmis(dd, na = 'impute')
    # Fix weather data
    dd <- fixWeather(dd, na = 'impute')
    dat[[i]][[j]] <- dd

    # Check for errors and create log with details
    fn <- strsplit(j, '/')
    fn <- fn[[1]][length(fn[[1]])]
    inst <- dat[[i]][[j]]$submitter$inst.abbrev
    render('error_check.Rmd', output_file = paste0(inst, '_', fn, '.html'), output_dir = '../../logs/03', quiet = TRUE)

    ## Merges into plot-level data
    #dd <- plmerge(dd)
    
  }
}
cat('Done! Read', length(dat), ' directories\n')



