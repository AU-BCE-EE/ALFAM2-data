# Runs everything necessary for making database from submitted data
# Creates interval-level and plot-level files for ALFAM2 database
# S. Hafner

# To get errors for any warnings
options(warn = 2) 

# Set database version
version <- '1.3' # Oct 2019

# Packages
library(gdata)
library(readxl)
#library(rmarkdown)
library(plyr)

# Read in functions
source('../functions/ALFAM_functions.R')

# Make database files
sink('../logs/make_database_log.txt')
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
  source('compare_1.0.R', echo = TRUE)
  source('compare_prev.R', echo = TRUE)
sink()

# Remove partial file
file.remove('../data - ALFAM2 output/ALFAM_part.csv')

options(warn = 1)
