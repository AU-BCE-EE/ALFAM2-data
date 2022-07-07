# Runs everything necessary for making database from submitted data
# Creates interval-level and plot-level files for ALFAM2 database
# S. Hafner

# To get errors for any warnings
options(warn = 2) 

# Set database version
version <- '1.5' # July 2022

# Packages
library(readxl)
library(plyr)

# Read in functions
source('../../functions/02/ALFAM_functions.R')

# Make database files
sink('../../logs/02/make_database_log.txt')
  source('make_database.R', echo = TRUE)
sink()

# Make plot-level file
source('summaries.R')

# Check for errors in data input or measurements
sink('../../logs/02/error_log.txt')
  source('error_checking.R', echo = TRUE)
sink()

# Compare to older version
sink('../../logs/02/version_comparison.txt')
  cat('Compare to original version \n')
  source('compare_1.0.R', echo = TRUE)
  cat('Compare to previous version \n')
  source('compare_prev.R', echo = TRUE)
sink()

# Remove partial file
file.remove('../../data-output/02/ALFAM_part.csv')

options(warn = 1)

cat('Note to SASHA: !!!!!!!!!!!!!!!!!!!!!!!!!!1 \n 
    Remember to create a tag/release on GitHub!!! \n
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
