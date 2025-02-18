# 

# Date record
print(Sys.time())

# Read and check data from files
ddir <- list.dirs('../../data-submitted/03', recursive = FALSE)
dat <- list()
for(i in ddir) {
  cat('\nDirectory ', i,'\n')
  f <- list.files(i, pattern = 'xls', full.names = TRUE)
  # Omit temporary Excel files (created when main file is open)
  f <- f[!grepl('\\/~', f)]
  dat[[i]] <- list()
  for(j in f) {
    cat('\n   file ', j,'\n')
    if (!exists('newsubmission') || grepl(newsubmission, j)) { 
      dd <- readALFAM2File(j)
      # Simple error check to save searching
      check4missing(dd)
      # Basic data cleaning, add *character* IDs, add time (ct, etc) . . .
      dd <- cleanALFAM(dd, sub.period = sub.period)
      # Check again now that cpmid is available
      check4missing(dd)
      # Fix weather data, including rain calcs and interpolation as needed
      dd <- fixWeather(dd, na = 'impute')
      # Calculate emission, including merge with plots data frame, adding mean weather and emission to plots
      dd <- calcEmis(dd, na = 'impute')
      # Add/extract some other vars for plot-level and interval-level data
      dd <- getVars(dd)

      # Save resulting list of data frames in main list
      dat[[i]][[j]] <- dd
    } else {
      cat('\n  Skipping file because of newsubmission setting!')
    }
  }
}
cat('Done! Read', length(dat), ' directories\n')

print(warnings())
