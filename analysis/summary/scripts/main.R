# Summary of ALFAM2 data

rm(list = ls())

source('packages.R')
source('functions.R')
source('load.R')
source('merge.R')
source('norm.R')
knit('summary.Rmd', output = '../reports/summary.md')
source('plot.R')
source('plot_pmid.R')
