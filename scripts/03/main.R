# Runs everything necessary for making database from submitted data
# Creates interval-level and plot-level files for ALFAM2 database
# This version processes only data from submission period 3 in ALFAM2
# ALFAM(1) data and submission period 2 data from ALFAM2 are simply read from output in data-output/02
# Keys are pulled from previous GitHub release, if available, to prevent changes to keys in existing observations
# REMINDER: in case of any errors, see make_database_log.txt for more details 

# Settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# To get errors for any warnings
#options(warn = 2) 

rm(list = ls())

# Set submission period number and new database version
sub.period <- 3
version <- '2.61' # February 2025

# GitHub release for pulling pmid
# pmid and other keys will be taken from this version for any observations that are already present
# This may not be the latest pushed version if there was no associated release
# That should be OK as long as this release number never decreases
oldrelease <- '2.59'

# For checking only a particular new file (partial matching)
#newsubmission <- 'MAGspring24'
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
sink('../../logs/03/make_database_log.txt')
  source('load_old.R', echo = TRUE)
  source('old_date.R', echo = TRUE)
  source('get_new.R', echo = TRUE)
  source('check_sub.R', echo = TRUE)
  source('log_pages.R', echo = FALSE)
  source('flags.R', echo = TRUE)
  source('stack_new.R', echo = TRUE)
  source('add_ID.R', echo = TRUE)
  source('merge_plot.R', echo = TRUE)
  source('merge_int.R', echo = TRUE)
  source('NL_swap.R', echo = TRUE)
  source('select.R', echo = TRUE)
  source('text_summ.R', echo = TRUE)
  source('save_csvs.R', echo = TRUE)
  source('check_final.R', echo = TRUE)
  source('check_version.R', echo = TRUE)
  source('export.R', echo = TRUE)
sink()

# Check version number
source('check_version.R')
sink('../../logs/03/check_version.txt')
  source('check_version.R')
sink()
source('check_version.R')
