# Runs everything necessary for making database from submitted data
# Creates interval-level and plot-level files for ALFAM2 database
# This version processes only data from submission period 4 in ALFAM2
# Data from submission periods 1-3 are simply read from output in data-output/03
# Keys are pulled from previous GitHub release, if available, to prevent changes to keys in existing observations
# REMINDER: in case of any errors, see make_database_log.txt for more details

# Settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# To get errors for any warnings
#options(warn = 2)

rm(list = ls())

# Set submission period number and new database version
sub.period <- 4
version <- '3.0'

# GitHub release for pulling pmid and checking version numbers
# pmid and other keys will be taken from this version for any observations that are already present
# This may not be the latest pushed version if there was no associated release
# That should be OK as long as this release number never decreases
old.sub.period <- 3
oldrelease <- '2.77'

# For checking only a particular new file (partial matching)
#newsubmission <- 'tabil26'
#rm('newsubmission')

# Create all html log files (otherwise just missing ones)?
# To replace individual ones (if input file was updated for example) delete old version before running script
alllogs <- FALSE

# End settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Packages
source('packages.R')
# Read in functions
source('functions.R')

# Make database files
# NAs by coercion issue. . .
sink('../../logs/04/make_database_log.txt')
  source('load_old.R', echo = TRUE)
  source('get_new.R', echo = TRUE)
  source('check_sub.R', echo = TRUE)
  source('flags.R', echo = TRUE)
  source('stack_new.R', echo = TRUE)
  source('add_ID.R', echo = TRUE)
  source('merge_plot.R', echo = TRUE)
  source('merge_int.R', echo = TRUE)
  source('select.R', echo = TRUE)
  source('save_csvs.R', echo = TRUE)
  source('check_final.R', echo = TRUE)
  source('check_vars.R', echo = TRUE)
  source('check_version.R', echo = TRUE)
  source('export.R', echo = TRUE)
sink()

# Check version number
sink('../../logs/04/check_version.txt')
  source('check_version.R')
sink()

# Run any main.R in analysis dir externally
cat('\nRunning scripts in analysis dir...\n')
owd <- setwd('../../summaries')
system('./run_analysis.sh')
setwd(owd)
