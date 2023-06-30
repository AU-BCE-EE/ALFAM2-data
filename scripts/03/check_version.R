# Compare version number to what is on GitHub

lastdev <- 'https://raw.githubusercontent.com/sashahafner/ALFAM2-data/dev/data-output/03/data_version.txt'
lastmain <- 'https://raw.githubusercontent.com/sashahafner/ALFAM2-data/master/data-output/03/data_version.txt'
release <- paste0('https://github.com/sashahafner/ALFAM2-data/raw/v', oldrelease, '/data-output/03/data_version.txt')
vld <- gsub('\\.$', '', as.data.frame(data.table::fread(lastdev))[[3]])
vlm <- gsub('\\.$', '', as.data.frame(data.table::fread(lastmain))[[3]])
vr <- gsub('\\.$', '', as.data.frame(data.table::fread(release))[[3]])

cat('Checking versions\n')

if (oldrelease != vr) {
  cat('Version number in old release does not match release tag!\n')
}

vdat <- data.frame(Where = c('main.R (in R)', 'Release tag', 'Release', 'Main branch', 'Dev branch'),
                   Version = c(version, oldrelease, vr, vlm, vld))
print(vdat, row.names = FALSE)

if (version %in% c(oldrelease, vr, vlm, vld)) {
  warning('Version number set in main.R matches\n   one or more existing verion numbers!\n   Did you forget to change it?')
}
