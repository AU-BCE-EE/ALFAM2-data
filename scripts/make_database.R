# Read in all ALFAM2 data and create csv file with complete interval-level database
# S. Hafner

# Date record
print(Sys.time())

# Read in ALFAM1 data
cat('\nReading ALFAM1.xlsx. . .\n')
d1 <- readALFAM1File('../../data - ALFAM1/ALFAM1.xlsx')
cat('Done!\n')

# ALFAM2 data
ddir <- list.dirs('../../data - submitted/01', recursive = FALSE)
d2 <- NULL
for(i in ddir) {
  cat('Directory ', i,'\n')
  f <- list.files(i, pattern = 'xls', full.names = TRUE)
  # Omit temporary Excel files (created when main file is open)
  f <- f[!grepl('\\/~', f)]
  d <- NULL
  for(j in f) {
    cat('   file ', j,'\n')
    d <- rbind(d, xx <- readALFAM2File(j))
  }
  d2 <- rbind(d2, d)
}
cat('Done! Read', length(unique(d2$file)), ' files.\n')

# Get publication info from sheet 4 in ALFAM2 files
ddir <- list.dirs('../../data - submitted/01', recursive = FALSE)
i <- ddir[1]
f
j <- f[1]
dp2 <- NULL
for(i in ddir) {
  cat('Directory ', i,'\n')
  f <- list.files(i, pattern = 'xls', full.names = TRUE)
  # Omit temporary Excel files (created when main file is open)
  f <- f[!grepl('\\/~', f)]
  d <- NULL
  for(j in f) {
    cat('   file ', j,'\n')
    pp <- as.data.frame(read_excel(j, sheet = 4, skip = 2, col_names = FALSE))
    if (nrow(pp) > 0) {
      names(pp) <- c('pub.id', 'pub.info')
      # Add file name
      x <- strsplit(j, '/')
      pp$file <- x[[1]][[length(x[[1]])]]
      d <- rbind(d, pp)
    }
  }
  dp2 <- rbind(dp2, d)
}
cat('Done! Read', length(unique(dp2$file)), ' files.\n')

# Add complete citations
d2 <- merge(d2, dp2, by = c('file', 'pub.id'), all.x = TRUE)

# Stack them
# Note order, to avoid time zone problem with app.start
d <- rbindf(d2, d1)

# Write out part
write.csv(d, '../data - ALFAM2 output/ALFAM_part.csv', row.names = FALSE)

## Start here to save time when only the code below has been updated
#d <- read.csv('../ouput/ALFAM_part.csv', as.is = TRUE)
#d <- fixALFAMCSV(d) # Does this cause problem with indexing by institute below?
#xx <- d

# Create institute code
inst1 <- as.character(sort(unique(d$institute[d$database == 1]))) 
inst2 <- as.character(sort(unique(d$institute[d$database == 2])))
inst <- c(paste0('1', sprintf('%02d', 1:length(inst1))), paste0('2', sprintf('%02d', 1:length(inst2))))
names(inst) <- c(inst1, inst2)
d$inst <- NA
d$inst <- inst[as.character(d$institute)]

# Add country 
countries <- c(ARDC = 'CA', AAFC = 'CA', ADAS = 'UK', `ADAS-RR` = 'UK', AT = 'DK', AUN = 'NO', AU = 'DK', `CAU-LU` = 'DE', 
	       CRPA = 'IT', DIAS = 'DK', IGER = 'UK', IMAG = 'NL', `INH-HAFL` = 'CH', INRA = 'FR', `IUL/FAT` = 'CH', 
	       JTI = 'SE', MU = 'IT', TEAGASC = 'IE', USDA = 'US', WUR = 'NL', SDU = 'DK', `NMI-WUR` = 'NL')
d$country <- countries[d$institute]

# Set crop area to zero for bare soil
d$crop.area[d$crop == 'bare soil'] <- 0

# When incorp isn't specified, set to none
d$notes[is.na(d$incorp)] <- paste(d$notes[is.na(d$incorp)], ' Incorporation (incorp/incorp.orig) not entered and was assumed to be none.')
d$incorp[is.na(d$incorp)] <- 'none'
d$man.trt1[is.na(d$man.trt1)] <- 'none'
d$man.trt2[is.na(d$man.trt2)] <- 'none'

# Set missing tillage to none
d$till[is.na(d$till)] <- 'No'
d$till[d$till == ''] <- 'No'

# Write an institute file
itab <- unique(d[, c('inst', 'institute', 'country')])
itab <- itab[order(itab$inst), ]
write.csv(itab, 'institutes.csv', row.names = FALSE)
print(itab)

# Now, after sorting out soil types and simplified application method, add factor level variables, etc.
print(dim(d))
d <- fixALFAMFactors(d)
print(dim(d))
## If needed, add dummy vars
##d <- addDummyVars(d)

# Leave these!
#### Drop all observations with no slurry application
###d <- subsetd(d, man.source != 'none')

# Add character plot id and other variables
print(dim(d))
d <- addALFAMVars(d)
print(dim(d))

# Make numeric pid (plot ID), pmid (plot-method ID) and eid (experiment ID)
d$pid<- as.integer(factor(d$cpid, levels = sort(unique(d$cpid), method = 'radix')))
d$pmid<- as.integer(factor(d$cpmid, levels = sort(unique(d$cpmid), method = 'radix')))
d$eid <- as.integer(factor(d$ceid, levels = sort(unique(d$ceid), method = 'radix')))

# Drop character ids
d$cpmid <- d$cpid <- d$ceid <- NULL

# Sort
d <- d[order(d$pmid, d$interval), ]

# Add numeric observation ID
d$oid <- 1:nrow(d)

# Set NA in notes to blank
d$notes[is.na(d$notes)] <- ''

# Acidification variable
d$acid <- grepl('acid', tolower(paste(d$man.trt1, d$man.trt2)))

# Add warning for old Swiss data
d$notes[d$inst == 107] <- paste('Emission error. Emission data are thought to be inaccurate. See ALFAM2 database paper along with Haeni et al. (2016) (Atmos. Environ. 125: 92-99).', d$notes[d$inst == 107], sep = ', ')

# Flag (e = error in emission results, d = duplicate observation, a = application problem, m = modeled emission rate)
d$flag <- ''
d$flag[grepl('[Ee]rror', d$notes)] <- 'e'
d$flag[grepl('[Dd]uplicate', d$notes)] <- 'd' # Should be no duplicates
d$flag[grepl('Improper injector operation', d$notes)] <- 'a'
d$flag[grepl('[Mm]odeled flux', d$notes)] <- 'm'

# Correct measurement techniques for ALFAM(1) data
# IGER, info from Tom M
d$meas.tech[d$inst == 105 & d$meas.tech == 'micro met'] <- 'ihf'
# Swiss, info from Thomas K
d$meas.tech[d$inst == 106 & d$meas.tech == 'micro met'] <- 'ihf'
# Dutch, info from Jan H
d$meas.tech[d$inst == 107 & d$meas.tech == 'micro met'] <- 'zinst'
# Sven said DIAS mm results were both IHF and Ferm tube, so we cannot be more specific

# Change temperature measurement heights units to m
d$air.temp.z <- d$air.temp.z/100
d$soil.temp.z <- d$soil.temp.z/100

# Add pub id for inst 106
d$pub.id[d$inst == 106] <- 1

# Order and select columns for database distribution
d <- d[, c('inst', 'eid', 'pid', 'pmid', 'oid', 
           'database', 'proj', 'exper', 'exper2', 
           'institute', 'country', 
           'file', 'row.in.file', 
           'pub.id', 'pub.info',
           'lat', 'long', 'topo', 'field', 
           'plot', 'plot.area', 'treat', 'rep', 'rep2', 
           'interval', 't.start', 't.end', 't.start.orig', 't.end.orig', 'dt', 'dt.calc', 'dt.diff', 'ct', 'mt', 'cta', 
           'meas.tech', 'meas.tech2', 'meas.tech.orig', 
           'bg.dl', 'bg.val', 'bg.unit', 
           'j.NH3', 'j.rel', 
           'e.int', 'e.cum', 'e.rel', 
           'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.type2', 'soil.water', 'soil.moist', 'soil.ph', 'soil.dens', 
           'crop.res', 'till', 
           'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'rad', 'wind', 'wind.z', 'wind.2m', 'wind.loc', 'rain', 
           'rain.rate', 'rain.cum', 'rh', 'far.loc', 
           'man.source', 'man.source.orig', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.stor', 
           'man.dm', 'man.tkn', 'man.tan', 'acid', 'man.tic', 'man.ua', 'man.ph', 'man.freeNH3', 'man.eq.gasNH3', 
           'date.start', 'app.start', 'app.start.orig',
           'app.method', 'app.method2', 'app.method.orig', 'app.rate', 'tan.app', 
           'incorp', 'incorp.orig', 'time.incorp', 
           'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 
           'crop', 'crop.orig', 'crop.z', 'crop.area', 'lai', 
           'notes', 'flag')]

# Round numeric columns
d <- rounddf(d, 5)

# Check for duplicates
if(sum(duplicated(d[,c('inst', 'plot', 'rep', 'meas.tech', 'ct', 'man.dm', 'man.tan', 'e.rel')])) > 0) {
  dups <- d[duplicated(d[,c('inst', 'plot', 'rep', 'meas.tech', 'ct', 'man.dm', 'man.tan', 'e.rel')]), ]
  stop('Error in make_database.R: duplicate rows. Search for qxt27b.')
}

# Create database file for release
write.csv(d, '../data - ALFAM2 output/ALFAM2_interval.csv', row.names = FALSE)

sink('../logs/ALFAM2_database.txt')
  cat('Created ALFAM_interval.csv on ')
  print(Sys.time())
  cat('contains data from', length(unique(d$inst)), ' institutes\n')
  cat('contains data from', length(unique(d$inst)), ' institutes\n')
  cat('and has ', length(unique(d$pmid)), ' pmid\n')
  cat('and ', length(d), ' rows\n')
  cat('and ', nrow(d), ' columns.\n')
  cat('Data directories: ', paste(gsub('../data - submitted/01/', '', ddir), collapse = ', ')) 
sink()

