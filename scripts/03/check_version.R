# Compare version number to what is on GitHub

# Latest pushed dev
lastdev <- 'https://raw.githubusercontent.com/sashahafner/ALFAM2-data/dev/data-output/03/data_version.txt'
# Latest pushed main
lastmain <- 'https://raw.githubusercontent.com/sashahafner/ALFAM2-data/master/data-output/03/data_version.txt'
# Latest release
release <- paste0('https://github.com/sashahafner/ALFAM2-data/raw/v', oldrelease, '/data-output/03/data_version.txt')

# Latest pushed dev
vld <- gsub('\\.$', '', as.data.frame(data.table::fread(lastdev))[[3]])
# Latest pushed main
vlm <- gsub('\\.$', '', as.data.frame(data.table::fread(lastmain))[[3]])
# Latest release
vr <- gsub('\\.$', '', as.data.frame(data.table::fread(release))[[3]])

cat('Checking versions\n')

if (oldrelease != vr) {
  cat('Version number in old release does not match release tag!\n')
}

vdat <- data.frame(Where = c('main.R (new version)', 'Release tag', 'Release', 'Main branch', 'Dev branch'),
                   Version = c(version, oldrelease, vr, vlm, vld))
cat('\n')
print(vdat, row.names = FALSE)

if (version %in% c(oldrelease, vr, vlm, vld)) {
  warning('Version number set in main.R matches\n   one or more existing verion numbers!\n   Did you forget to change it?')
  print(c(`latest release` = vr, `latest main push` = vlm, `latest dev push` = vld))
  print(c(`Version number setting` = version))
}
