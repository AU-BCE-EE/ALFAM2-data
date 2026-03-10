# Checks that all column headers in the data files are described in the files in the headers directory. 

# Get header data
ihead <- read.csv('../../../headers/interval-level_variables.csv')
phead <- read.csv('../../../headers/plot-level_variables.csv')

# And data files
idat <- data.table::fread('../../../data-output/03/ALFAM2_interval.csv.gz')
pdat <- data.table::fread('../../../data-output/03/ALFAM2_plot.csv.gz')

# Variables `e.6` and similar are described as `e.x` in the description columns in the rows for `e.6` etc.
# Here, replace the numbers with "(time)"
names(pdat) <- gsub('\\.[0-9]+$', '\\.(time)', names(pdat))
phead$Name <- gsub('\\.[0-9]+$', '\\.(time)', phead$Name)

# Missing in plot-level header file.
mph <- unique(names(pdat))[!unique(names(pdat)) %in% phead$Name]
# No longer used--remove from plot-level header file.
rph <- phead$Name[!phead$Name %in% names(pdat)]
# Missing in interval-level header file.
mih <- names(idat)[!names(idat) %in% ihead$Name]
# No longer used--remove from interval-level header file.
rih <- ihead$Name[!ihead$Name %in% names(idat)]

# Create log file only if there is a problem
sink('../log/log.txt')
  cat('Variable definition (header) check results') 

  cat('\n\n1. Missing variables in plot-level header file: ') 
  cat(mph)

  cat('\n\n2. Missing variables in interval-level header file: ') 
  cat(mih)

  cat('\n\n3. Variables that should be removed from plot-level header file: ') 
  cat(rph)

  cat('\n\n4. Variables that should be removed from interval-level header file: ') 
  cat(rih)

sink()

# Throw a warning if there are any problems
# And copy log file to somewhere I will notice it
if (length(c(mph, rph, mih, rih)) > 0) {
  stop('Variable definition (header) problem! Check analysis/headers/log.txt or the copy in this directory.')
  file.copy('../log/log.txt', '../../../header_warning_log.txt', overwrite = TRUE)
}
