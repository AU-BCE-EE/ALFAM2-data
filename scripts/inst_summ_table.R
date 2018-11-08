# Summarize ALFAM2 data by count
# S. Hafner
# 24 Nov 2016

# Packages
library(knitr)
library(plyr)
library(rmarkdown)

# ALFAM functions
source('../functions/ALFAM_functions.R')

# Read in data
d <- read.csv('../data/ALFAM_interval.csv')
ds <- read.csv('../data/ALFAM_plot.csv')

# Drop duplicate pids
nrow(ds)
ds <- ds[!duplicated(ds$pid), ]
nrow(ds)

# Change factor levels
ds$man.source <- as.character(ds$man.source)
ds$man.source[ds$man.source == 'conc'] <- 'fert'
ds$man.source[ds$man.source == 'poultry'] <- 'birds'

ds$crop <- as.character(ds$crop)
ds$crop <- factor(ds$crop, levels = c('bare soil', 'grass', 'stubble', 'other', 'cereal', 'maize'), 
                           labels = c('soil',      'grss',  'stub',    'othr',  'cer',    'mz'   )
                           )

ds$app.method <- as.character(ds$app.method)
ds$app.method <- factor(ds$app.method, levels = c('bc', 'bsth', 'ts', 'bss', 'os', 'pi', 'cs'),
                                       labels = c('bc', 'th',   'ts', 'ths', 'os', 'pi', 'cs')
                           )

ds$meas.tech <- as.character(ds$meas.tech)
ds$meas.tech[ds$meas.tech == 'micro met'] <- 'mm'

isumm <- ddply(d, c('inst', 'institute', 'country'), summarise,
               Experiments = length(unique(exper)), Plots = length(unique(pid)),
               Intervals = length(unique(oid)))

# Slurry types etc by plot
isumm2 <- ddply(ds, c('inst', 'institute', 'country'), summarise,
               `Slurry types` = paste(table(as.character(man.source)), paste(substring(names(table(as.character(man.source))), 1, 1), sep = ' '), collapse = ', '),
               `App. methods` = paste(table(as.character(app.method)), paste(substring(names(table(as.character(app.method))), 1, 5), sep = ' '), collapse = ', '),
               `Crops` = paste(table(as.character(crop)), paste(substring(names(table(as.character(crop))), 1, 5), sep = ' '), collapse = ', '),
               `Meas. methods` = paste(table(as.character(meas.tech)), paste(substring(names(table(as.character(meas.tech))), 1, 5), sep = ' '), collapse = ', '),
               Duration = paste(min(round(ct.max)), round(mean(ct.max)), max(round(ct.max)), sep = ', ')
               )

isumm <- merge(isumm, isumm2)


sink('../tables/inst_summ.md')
  print(kable(isumm, format = 'markdown'))
sink()

render('../tables/inst_summ.md', 'word_document', output_dir = '../tables')
