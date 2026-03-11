# Packages

library(data.table)
library(rmarkdown)
library(knitr)
library(leaflet)
library(txtplot)
library(ggplot2)

# Make sure R.utils is available (but don't load)
if (!'R.utils' %in% rownames(installed.packages())) {
  stop('R.utils package is missing.')
}

sink('../../logs/04/R_package_versions.txt')
  print(sessionInfo())
sink()


