# Runs everything necessary for making database from submitted data
# Creates interval-level and plot-level files for ALFAM2 database
# This version processes only data from uptake 3 in ALFAM2
# ALFAM(1) data and uptake 2 data from ALFAM2 are simply read from output in data-output/02

# To get errors for any warnings
options(warn = 2) 

rm(list = ls())

# Set uptake number and database version
uptake <- 3
version <- '2.0' # September 2021

source('packages.R')

# Read in functions
source('functions.R')

# Make database files
# NAs by coercion issue. . .
sink('../../logs/03/make_database_log.txt')
  source('load_old.R', echo = TRUE)
  source('get_new.R', echo = TRUE)
  source('check_sub.R', echo = TRUE)
  source('flags.R', echo = TRUE)
  source('stack_new.R', echo = TRUE)
  source('add_ID.R', echo = TRUE)
  source('merge_plot.R', echo = TRUE)
  source('merge_int.R', echo = TRUE)
  source('check_final.R', echo = TRUE)
  source('export.R', echo = TRUE)
sink()
