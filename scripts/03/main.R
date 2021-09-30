# Runs everything necessary for making database from submitted data
# Creates interval-level and plot-level files for ALFAM2 database
# This version processes only data from uptake 3 in ALFAM2
# ALFAM(1) data and uptake 2 data from ALFAM2 are simply read from output in data - ALFAM2 output/02

# To get errors for any warnings
#options(warn = 2) 

rm(list = ls())

# Set uptake number and database version
uptake <- 3
version <- '2.0' # September 2021

source('packages.R')

# Record versions
# source('package_versions.R')

# Read in functions
source('../../functions/03/ALFAM_functions.R')
source('../../functions/03/dfsumm.R')

# Make database files
sink('../../logs/03/make_database_log.txt')
  source('make_database.R', echo = TRUE)
sink()

# Make plot-level file
source('summaries.R')

# Check for errors in data input or measurements
sink('../logs/error_log.txt')
  source('error_checking.R', echo = TRUE)
sink()

# Compare to older version
sink('../logs/version_comparison.txt')
  cat('Compare to original version \n')
  source('compare_1.0.R', echo = TRUE)
  cat('Compare to previous version \n')
  source('compare_prev.R', echo = TRUE)
sink()

# Remove partial file
file.remove('../data - ALFAM2 output/ALFAM_part.csv')

options(warn = 1)

cat('Note to SASHA: !!!!!!!!!!!!!!!!!!!!!!!!!!1 \n 
    Remember to create a tag/release on GitHub!!! \n
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
