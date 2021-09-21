# 

# Date record
print(Sys.time())

# Read in data from files
ddir <- list.dirs('../../data - submitted/03', recursive = FALSE)
dat <- list()
for(i in ddir) {
  cat('Directory ', i,'\n')
  f <- list.files(i, pattern = 'xls', full.names = TRUE)
  # Omit temporary Excel files (created when main file is open)
  f <- f[!grepl('\\/~', f)]
  dat[[i]] <- list()
  for(j in f) {
    cat('   file ', j,'\n')
    dat[[i]][[j]] <- readALFAM2File(j)
  }
}
cat('Done! Read', length(dat), ' directories\n')

# Basic data cleaning
for (i in names(dat)) {
  for (j in names(dat[[i]])) {
    dat[[i]][[j]] <- cleanALFAM(dat[[i]][[j]])
  }
}

# Calculate emission
# NTS: still need to sort out what to do with blank intervals
for (i in names(dat)) {
  for (j in names(dat[[i]])) {
    dat[[i]][[j]] <- calcEmis(dat[[i]][[j]], na = 'impute')
  }
}

# Check for errors
# NTS: Need a check to look for gaps in time, compare dt to diff(t.end) perhaps
# NTS: Need to fix print width
for (i in names(dat)) {
  for (j in names(dat[[i]])) {
    inst <- dat[[i]][[j]]$submitter$inst.abbrev
    now <- Sys.time()
    render('error_check.Rmd', output_file = paste0(inst, now, '.pdf'), output_dir = '../../logs/03')
  }
}


