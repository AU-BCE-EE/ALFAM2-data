# Functions for reading in ALFAM2 data
# S. Hafner

summLogistic <- function(mod, eref, drop.inst = TRUE, drop.int = TRUE, show.app.effect = FALSE) {
  if(is.vector(mod)) {
    tbeta <- exp(mod)
    oddsref <- eref/(1 - eref)
    oddseffect <- tbeta*oddsref
    emiseffect <- oddseffect/(1 + oddseffect)
    rel.effect <- 100*(emiseffect/eref - 1)
    return(rel.effect)
  }

  modsumm <- as.data.frame(summary(mod)[[4]])
  tbeta <- exp(modsumm[, 1])
  oddsref <- eref/(1 - eref)
  oddseffect <- tbeta*oddsref
  emiseffect <- oddseffect/(1 + oddseffect)
  rel.effect <- 100*(emiseffect/eref - 1)
  app.effect <- 100*(emiseffect - eref)
  # Or next line, above easier to track
  #rel.effect <- (((tbeta*eref/(1-eref))/(1 + tbeta*eref/(1-eref))/eref) - 1)*100

  modsumm <- insertCol(rel.effect, modsumm, 1)
  if(show.app.effect) {
    modsumm <- insertCol(app.effect, modsumm, 2)
    names(modsumm) <- c('reffect', 'appeffect', 'estimate', 'se', 'tval', 'pval')
  }
  names(modsumm) <- c('reffect', 'estimate', 'se', 'tval', 'pval')
  modsumm <- rounddf(modsumm, 3)
  modsumm$pval <- as.character(modsumm$pval)
  modsumm$pval <- ifelse(as.numeric(modsumm$pval)>= 0.0001, modsumm$pval, '<0.0001')
  if(drop.inst) modsumm <- modsumm[!grepl('^i', rownames(modsumm)), ]
  if(drop.int) modsumm <- modsumm[!grepl('Intercept', rownames(modsumm)), ]
  return(modsumm)
}


#summLog <- function(mod, drop.inst = TRUE, drop.int = TRUE, show.app.effect = FALSE) {
#
#  modsumm <- as.data.frame(summary(mod)[[4]])
#  tbeta <- exp(modsumm[, 1])
#  oddsref <- eref/(1 - eref)
#  oddseffect <- tbeta*oddsref
#  emiseffect <- oddseffect/(1 + oddseffect)
#  rel.effect <- 100*(emiseffect/eref - 1)
#  app.effect <- 100*(emiseffect - eref)
#  # Or next line, above easier to track
#  #rel.effect <- (((tbeta*eref/(1-eref))/(1 + tbeta*eref/(1-eref))/eref) - 1)*100
#  modsumm <- insertCol(rel.effect, modsumm, 1)
#  if(show.app.effect) {
#    modsumm <- insertCol(app.effect, modsumm, 2)
#    names(modsumm) <- c('reffect', 'appeffect', 'estimate', 'se', 'tval', 'pval')
#  }
#  names(modsumm) <- c('reffect', 'estimate', 'se', 'tval', 'pval')
#  modsumm <- rounddf(modsumm, 3)
#  modsumm$pval <- as.character(modsumm$pval)
#  modsumm$pval <- ifelse(as.numeric(modsumm$pval)>= 0.0001, modsumm$pval, '<0.0001')
#  if(drop.inst) modsumm <- modsumm[!grepl('^i', rownames(modsumm)), ]
#  if(drop.int) modsumm <- modsumm[!grepl('Intercept', rownames(modsumm)), ]
#  return(modsumm)
#}

readALFAM1File <- function(file) {

  require(gdata)
  d <- read.xls(file, sheet = 1, skip = 6, header = FALSE, as.is = TRUE)

  # Column types
  # Note that integer codes are set to character for indexing later
  cc <- c(rep('character', 9), interval = 'integer', rep('character', 2), rep('numeric', 2), 'character', rep('numeric', 5), SoilMoist = 'character', rep('numeric', 9), rep('character', 3), rep('numeric', 5), ManureAppl = 'character', 'numeric', 'character', 'numeric', CropType = 'character', 'numeric', rep('character', 2))

  # Column names
  names(d) <- c('institute', 'proj', 'exper', 'plot', 'rep', DataSource = 'data.source', Experiment = 'exper2', 'treat', 'rep2', 'interval', 't.start', 't.end', 'dt', 'j.NH3', 'soil.type', 'clay', 'silt', 'sand', 'oc', 'soil.water', 'soil.moist', 'soil.ph', 'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'rad', 'wind', 'wind.z', 'rain', 'man.source', 'man.trt1', 'man.bed', 'man.dm', 'man.tkn', 'man.tan', 'man.ua', 'man.ph', 'app.method', 'app.rate', 'incorp', 'time.incorp', 'crop', 'crop.z', 'meas.tech', 'till')

  # Assign column types
  for(i in 1:ncol(d)) {
    d[, i] <- eval(parse(text = paste0('as.', cc[i], '(d[, i])')))
  }

  # Add file name
  x <- strsplit(file, '/')
  d$file <- x[[1]][[length(x[[1]])]]

  # Add original row numbers
  d$row.in.file <- 1:nrow(d) + 7

  # Data base
  d$database <- 1

  # Convert integer codes

  # Start with man.con, which is from man.source
  # 10 = cattle urine from old Swiss data
  mc.code <- c(`1` = 'Slurry', `2` = 'Slurry', `3` = 'Solid', `4` = 'Solid', `5` = 'Slurry', `6` = 'Solid', `7` = NA, `8` = 'Liquid', `9` = 'Solid', `10` = 'Liquid')
  d$man.con <- mc.code[d$man.source]

  int.codes <- list(
    soil.type = c(`1` = 'Sand', `2` = 'Clay', `3` = 'Loam', `4` = 'Organic'), 
    soil.moist = c(`1` = 'Wet', `2` = 'Dry'), 
    # 10 = cattle urine from old Swiss data
    man.source = c(`1` = 'Pig', `2` = 'Cattle', `3` = 'Pig', `4` = 'Cattle', `5` = 'Poultry', `6` = 'Poultry', `7` = 'Sewage sludge', `8` = 'Mixed', `9` = 'Mixed', `10` = 'Cattle'), 
    man.trt1 = c(`0` = 'None', `1` = 'In-house separation', `2` = 'Mechanical separation', `3` = 'Aerobic treatment', `4` = 'Anaerobic digestion'), 
    man.bed = c(`0` = 'None', `1` = 'Straw', `2` = 'Sawdust', `3` = 'Paper'), 
    app.method = c(`0` = 'Broadcast', `1` = 'Band spread or trailing hose', `2` = 'Trailing shoe', `3` = 'Open slot', `4` = 'Closed slot', `5` = 'Pressurized injection'), 
    incorp = c(`0` = 'None', `1` = 'Deep', `2` = 'Shallow'), 
    crop = c(`1` = 'Grass', `2` = 'Stubble', `3` = 'Bare soil', `4` = 'Growing crop'), 
    meas.tech = c(`1` = 'Wind tunnel', `2` = 'Micro met', `3` = 'Dynamic chamber', `4` = 'Other'), 
    till = c(`0` = 'No', `1` = 'Yes')
  )

  for(i in names(int.codes)) {
    d[, i] <- int.codes[[i]][d[, i]]
  }

  # Add blank column for app.start (fixes problem in rbindf of d1 and d2 in make_database, where result was numeric)
  d$app.start <- NA

  # Convert t.start, t.end, and app.start to POSIX
  # Fix dates
  for(i in c('t.start', 't.end', 'app.start')) {
    d[, i] <- as.POSIXct(d[, i], format = '%d-%m-%Y %H:%M', tz = 'GMT')
  }


  # Convert wind.z (HeightWind in Excel file) to m
  d$wind.z <- d$wind.z/100

  # Add application rate unit
  d$app.rate.unit <- 't/ha'

  # Add flux units
  # No conversion needed here
  d$j.NH3.unit <- d$j.NH3.unit.orig <- 'kg N/ha-hr'

  # Fix soil (get texture class from % sand etc., add soil.type2 column)
  d <- addSoilText(d)

  # No soil.dens, can't do it
  ## Add soil.moist where missing, based on water-filled pore space
  #d <- calcSoilMoist(d)

  ### Add some columns
  ##d <- addALFAMVars(d)

  # Return
  return(d)

}

readALFAM2File <- function(file, institute) {

  require(gdata)
  require(plyr)

  d <- read.xls(file, sheet = 1, skip = 7, header = FALSE, as.is = TRUE)
  # In case there are extra columns, drop them
  d <- d[, 1:71]

  #pubs <- read.xls(file, sheet = 4, skip = 2, header = FALSE, as.is = TRUE)

  # Column types
  # Note furrow measurements are character to be more flexible (some input data are character, see AAFC)
  # Fartherst measurement location also character for, e.g., MU who entered "Field"
  cc <- c(rep('character', 7), rep('character', 2), rep('character', 2), 'integer', rep('character', 4), 'numeric', 'character', 'numeric', 'character', 'numeric', 'character', rep('numeric', 4), 'character', 'numeric', 'character', 'numeric', 'numeric', 'character', 'character', rep('numeric', 9), wind.loc = 'character', farthest.loc = 'character', rep('character', 5), rep('numeric', 7), 'character', 'character', 'numeric', rep('character', 3), rep('numeric', 2), furrowdepth = 'character', furrowwidth= 'character', 'character', rep('numeric', 3), 'character')

  # Column names
  cn <- c('proj', 'pub.id', 'exper', 'field', 'plot', 'treat', 'rep', 'lat', 'long', 'long.dir', 'topo', 'interval', 't.start', 't.end', 'dt', 'meas.tech', 'plot.area', 'bg.dl', 'bg.val', 'bg.unit', 'j.NH3', 'j.NH3.unit', 'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.water', 'soil.moist', 'soil.ph', 'soil.dens', 'crop.res', 'till', 'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'rad', 'wind', 'wind.z', 'rain', 'rh', 'wind.loc', 'far.loc', 'man.source', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.stor', 'man.dm', 'man.tkn', 'man.tan', 'man.tic', 'man.ua', 'man.ph', 'app.start', 'app.method', 'app.rate', 'app.rate.unit', 'incorp', 'time.incorp', 'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 'crop', 'crop.z', 'crop.area', 'lai', 'notes')

  # Helps with finding problems in column type vector
  #cbind(1:length(cc), cn, cc)

  # Assign column types
  for(i in 1:ncol(d)) {
    d[, i] <- eval(parse(text = paste0('as.', cc[i], '(d[, i])')))
  }

  # Column names
  names(d) <- cn

  # Add institute and file name
  x <- strsplit(file, '/')
  if(missing(institute)) {
    institute <- x[[1]][[length(x[[1]])-1]]
  }
  d$institute <- institute
  d$file <- x[[1]][[length(x[[1]])]]

  # Add original row numbers
  d$row.in.file <- 1:nrow(d) + 9

  # Data base
  d$database <- 2

  # Sort out lat and long (change to decimal degrees if needed)
  d$lat <- DMS2DD(d$lat)
  d$long <- DMS2DD(d$long)
  # Convert W to negative long
  d$long.dir <- tolower(substring(d$long.dir, 1, 1))
  d$long[!is.na(d$long.dir) & d$long.dir == 'w'] <- - d$long[!is.na(d$long.dir) & d$long.dir == 'w']

  d$t.start.orig <- d$t.start
  d$t.end.orig <- d$t.end
  d$app.start.orig <- d$app.start

  # Sort out interval dates and times
  # This big block results in character date/time with format '%d-%m-%Y %H:%M'
  d[, c('t.start.flag', 't.end.flag', 'app.start.flag')] <- ''
  for(i in c('t.start', 't.end', 'app.start')) {
    # Now applied row-by-row
    for(j in 1:nrow(d)) {
      if(!is.na(d[j, i]) & nchar(d[j, i])>8) {
        d[j, i] <- gsub('/', '-', d[j, i])
        d[j, paste0(i, '.flag')][grepl('\\.', d[j, i])] <- 'decimal point'
        d[j, i] <- gsub('\\.', ':', d[j, i])
        day <- as.numeric(lapply(d[j, i], function(x) strsplit(x, '-')[[1]][1]))
        month <- as.numeric(lapply(d[j, i], function(x) strsplit(x, '-')[[1]][2]))
        year <- as.numeric(lapply(d[j, i], function(x) strsplit(x, '[- ]')[[1]][3]))
        tt <- as.character(lapply(d[j, i], function(x) strsplit(x, '[- ]')[[1]][4]))
        if(nchar(year) != 4) {
          d[j, paste0(i, '.flag')] <- paste0(d[j, paste0(i, '.flag')], ', 2 digit year')
          if(year > 50) {
            year <- year + 1900
          } else if(year < 20) {
            year <- year + 2000
          } else {
            stop('Error in readALFAM2() with year. Code BerlYu1776.')
          }
        }  
        if(month > 12) {
          d[j, paste0(i, '.flag')] <- paste0(d[j, paste0(i, '.flag')], ', month and day switched')
          if(day > 12) {
            stop('Both month and day have values > 12 in ', i, '. Code Aheruna1299.')
          }
          dd <- day
          day <- month
          month <- dd
        }
        # Pad with leading 0s
        day <- sprintf('%02d', day)
        month <- sprintf('%02d', month)
        date.time.char <- paste0(year, '-', month, '-', day, ' ', tt)
        d[j, i] <- date.time.char
      } else d[j, i] <- NA
    }
  }

  # Convert all three date.time columns to POSIX
  # Note order: Y M D
  for(i in c('t.start', 't.end', 'app.start')) {
    d[, i] <- as.POSIXct(d[, i], format = '%Y-%m-%d %H:%M', tz = 'GMT')
  }

  # Convert incorportation time in hh:mm to decimal hours
  # Assumes values given with no : are just in hours
  d$time.incorp <- as.character(d$time.incorp)
  if(any(grepl(':', d$time.incorp))) d$time.incorp[grepl(':', d$time.incorp)] <- as.numeric(lapply(d$time.incorp[grepl(':', d$time.incorp)], function(x) strsplit(x, ':')[[1]][1])) + as.numeric(lapply(d$time.incorp[grepl(':', d$time.incorp)], function(x) strsplit(x, ':')[[1]][2]))/60
  d$time.incorp <- as.numeric(d$time.incorp)

  # Calculate dt = elapsed time in hours
  if(sum(!is.na(d$t.start) & !is.na(d$t.end))>0) d$dt.calc <- as.numeric(d$t.end - d$t.start, units = 'hours') else d$dt.calc <- NA

  # Convert reported dt to decimal hours
  if(any(grepl(':', d$dt))) d$dt[grepl(':', d$dt)] <- as.numeric(lapply(d$dt, function(x) strsplit(x, ':')[[1]][1]))[grepl(':', d$dt)] + as.numeric(lapply(d$dt, function(x) strsplit(x, ':')[[1]][2]))[grepl(':', d$dt)]/60
  d$dt <- as.numeric(d$dt)

  d$dt[is.na(d$dt)] <- d$dt.calc[is.na(d$dt)]
  d$dt.diff <- d$dt - d$dt.calc
  #d$dt.flag <- ''
  #d$dt.flag[d$dt != d$dt.calc] <- paste('reported and calculated dt do not match. Difference of', signif((d$dt - d$dt.calc)[d$dt != d$dt.calc], 2))

  # Sort out emission units
  cf <- c('kg N/ha-hr' = 1, 
	  'ug NH3/m2-s' = 1/1E9*14.007/17.03*1E4*3600, 
	  'ng/m2-s' = 1/1E12*1E4*3600, 
	  'ug/m2-s' = 1/1E9*1E4*3600, 
	  'mg N/m2-hr' = 1/1E6*1E4, 
          'ng NH3 m-2 s-1' = 14.007/17.031*1/1E12*1E4*3600, 
          'ug NH3/m2-s' = 14.007/17.031*1/1E9*1E4*3600, 
          'ug/m2/s' = 1/1E9*1E4*3600)

  d$j.NH3.unit.orig <- d$j.NH3.unit
  d$j.NH3.orig <- d$j.NH3
  # Use indexing to add conversion factor for flux units
  d$j.NH3.conv.fact <- cf[d$j.NH3.unit.orig]
  d$j.NH3.unit <- 'kg N/ha-hr'
  d$j.NH3 <- d$j.NH3.orig*d$j.NH3.conv.fact

  # Fix slurry application rate where it was given as TAN application rate (only ARDC--Shabtai's data)
  d$app.rate[d$app.rate.unit == 'kg NH4-N/ha'] <- d$app.rate[d$app.rate.unit == 'kg NH4-N/ha']/d$man.tan[d$app.rate.unit == 'kg NH4-N/ha']
  d$app.rate.unit[d$app.rate.unit == 'kg NH4-N/ha'] <- 't/ha'

  # Sort out crop height for bare soil
  d$crop.z[tolower(d$crop) == 'bare soil'] <- 0
  d$crop.area[tolower(d$crop) == 'bare soil'] <- 0

  # Fix air.temp.z values apparently given in m not cm
  d$air.temp.z[!is.na(d$air.temp.z) & d$air.temp.z < 3] <- d$air.temp.z[!is.na(d$air.temp.z) & d$air.temp.z < 3]*100

  # Fix soil (get texture class from % sand etc., add soil.type2 column)
  d <- addSoilText(d)

  ## Set missing tillage values to No
  ## NTS: seems to already be corrected! Not sure how.
  #d$till[is.na(d$till)] <- 'No'
  #d$till[d$till == ''] <- 'No'
  #d$till <- factor(d$till)

  # Add soil.moist where missing, based on water-filled pore space
  #d <- calcSoilMoist(d)

  # NTS: Remove entirely?
  ### Add some columns
  ##d <- addALFAMVars(d)

  return(d)

}

# Function for adding variables to an ALFAM data frame
addALFAMVars <- function(d) {

  require(plyr)

  # Unique character plot IDs
  # First one includes measurement technique
  d$cpmid <- paste0('D:', as.numeric(factor(d$database)), '.I:', d$institute, '.Pr:', d$proj, '.E:', d$exper, '.F:', d$field, '.P:', d$plot, '.T:', 
                    d$treat, '.R:', d$rep, '.R2:', d$rep2, '.T:', d$app.start, '.M:', d$meas.tech)
  d$cpid <- paste0('D:', as.numeric(factor(d$database)), '.I:', d$institute, '.Pr:', d$proj, '.E:', d$exper, '.F:', d$field, '.P:', d$plot, '.T:', 
                    d$treat, '.R:', d$rep, '.R2:', d$rep2, '.T:', d$app.start, '.M:')

  # Unique experiment IDs
  d$ceid <- paste0('D:', as.numeric(factor(d$database)), '.I:', d$institute, '.Pr:', d$proj, '.E:', d$exper)

  # Applied TAN (kg N/ha)
  d$tan.app <- d$app.rate*d$man.tan

  ###################################################################################################################
  # Equilibrium NH3 calcs
  temp.k <- d$air.temp + 273.15
  R <- 0.000082057

  # Molal TAN concentration
  m.tan <- d$man.tan/14.0067/(1 - d$man.dm/100)

  # Ionic strength (set to TAN concentration)
  mu <- m.tan

  # Deby-Huckel constants
  a <- 0.5
  b <- 0.3

  # Charge on NH4+
  z <- 1

  # Activity coefficients, equilibrium constant, Henry's law constant (m3/kg)
  g.NH4 <- 10^(-a*z^2*sqrt(mu)/(1 + b*2.5*sqrt(mu)))
  k.NH4 = 10^(0.0905 + 2729.31/temp.k)
  h.NH3 <- R*temp.k*10^(-3.51645 -0.0013637*temp.k + 1701.35/temp.k)

  # Free NH3 (mol/kgw) and equilibrium gas-phase NH3 (mol/m3)
  m.NH3 <- g.NH4*m.tan/(k.NH4*10^(-d$man.ph) + g.NH4)
  cg.NH3 <- m.NH3/h.NH3

  # Free NH3 (g/kgw)
  d$man.freeNH3 <- 14.0067*m.NH3
  # Equilibrium NH3 (g) (g/m3)
  d$man.eq.gasNH3 <- 14.0067*cg.NH3
  ###################################################################################################################

  ###################################################################################################################
  # Standardize wind speed
  # Roughness length (m)
  # Set to 1/10th canopy height
  z0 <- d$crop.z / 10 / 100
  # Or min of 1 cm 
  z0[is.na(z0)] <- 0.01
  z0[z0 < 0.01] <- 0.01
  # Adjust to height of 2 m
  d$wind.2m <- d$wind*log(2.0/z0)/log(d$wind.z/z0)
  ###################################################################################################################

  # Average rainfall rate (average over interval) (mm/hr)
  d$rain.rate <- d$rain/d$dt

  ###################################################################################################################
  # Emission calculations

  # NH3 emission in each interval
  d$e.int <- d$j.NH3*d$dt
  
  # Response variables must be named j and e for model functions (NTS: revisit)
  #d$j <- d$j.NH3

  # Cumulative emission
  # dt = duration of interval, ct = cumulative time to end of interval, mt =  cumulative time to middle of interval
  # e.cum = cumulative emission (kg N/ha)
  # tan.start = TAN (kg N/ha) present at start of interval
  # Sort by interval first (added 22 April 2020, omission was causing errors in ct before)
  d <- d[order(d$cpmid, d$interval), ]
  d <- ddply(d, 'cpmid', transform, ct = cumsum(dt), mt = cumsum(dt) - dt/2, 
             e.cum = cumsum(e.int), rain.cum = cumsum(rain), 
	           date.start = as.character(min(t.start), format = '%Y-%m-%d'))
  
  ### Response variables must be named j and e for model functions (NTS: revisit)
  ##d$e <- d$e.cum

  # Elapsed time since application
  d$cta <- as.numeric(difftime(d$t.end, d$app.start, units = 'hours'))

  ### Replace ct values with et.app if available
  ##d$ct[!is.na(et.app)] <- et.app[!is.na(et.app)]

  ### TAN loss as fraction of applied
  ##d$e.int.rel.app <- d$e.int/d$tan.app

  ### TAN loss as fraction of amount present at start of shift
  ##d$e.int.rel.int <- d$e.int/d$tan.start

  # Relative emission, fraction of applied TAN
  d$e.rel <- d$e.cum/d$tan.app

  ### Relative emission 2, fraction of final cumulative emission
  ##d <- ddply(d, 'cpid', transform, e.rel2 = e/max(e))

  # Relative flux (fraction of applied TAN per hour)
  d$j.rel <- d$j.NH3/d$tan.app

  return(d)

}

# Changes labels for factors, groups some levels together
# Cannot be run more than once on the same data frame
fixALFAMFactors <- function(d) {

  # Sort out manure types
  d$man.source.orig <- d$man.source

  d$man.source[d$man.source.orig == 'silage maize'] <- 'Other'

  # Extract types from more detailed names
  for(i in c('Pig', 'Cattle', 'Poultry', 'Mixed')) {
    d$man.source[grepl(tolower(i), tolower(d$man.source))] <- i
  }

  d$man.source <- factor(d$man.source, 
			 levels = c('Cattle', 'Pig', 'Poultry', 'Mink', 'Sewage sludge', 'Mixed', 'Concentrate', 'Other', 'None'), 
			 labels = c('cat', 'pig', 'poultry', 'mink', 'sludge', 'mix', 'conc', 'other', 'none')
			 )

  # Manure consistency (reported)
  d$man.con[d$man.con == ''] <- NA
  d$man.con <- factor(tolower(d$man.con), levels = c('slurry', 'liquid', 'solid'))

  # Application method
  d$app.method.orig <- d$app.method
  d$app.method[tolower(d$app.method) == 'broad spread'] <- 'Broadcast'
  d$app.method[tolower(d$app.method) == 'trailing hose'] <- 'Band spread or trailing hose'
  d$app.method <- factor(d$app.method, 
			 levels = c('Broadcast', 'Trailing shoe', 'Open slot', 'Closed slot', 'Band spread or trailing hose', 'Band spread on slots', 'Pressurized injection'), 
			 labels = c('bc', 'ts', 'os', 'cs', 'bsth', 'bss', 'pi')
			 )

  # Simplify application methods--group bsth and ts into one to use as a universal reference level in model building
  d$app.method2 <- factor(ifelse(d$app.method %in% c('bsth', 'ts'), 'band', as.character(d$app.method)), levels = c('bc', 'band', 'os', 'cs'))
 
  # Sort out crop type
  d$crop.orig <- d$crop
  d$crop <- tolower(d$crop)
  d$crop[grepl('wheat', d$crop)] <- 'cereal'
  d$crop[grepl('barley', d$crop)] <- 'cereal'
  d$crop[grepl('rye', d$crop)] <- 'cereal'
  d$crop[grepl('maize', d$crop)] <- 'maize'
  d$crop[d$crop %in% c('growing crop', 'winter oilseed rape')] <- 'other'
  d$crop <- factor(d$crop, levels = c('bare soil', 'stubble', 'grass', 'cereal', 'maize', 'other'))

  # Sort out measurement technique
  d$meas.tech.orig <- d$meas.tech
  d$meas.tech <- tolower(d$meas.tech)
  d$meas.tech[grepl('bls', d$meas.tech)] <- 'bls'
  d$meas.tech[grepl('open path ftir', d$meas.tech)] <- 'bls'
  d$meas.tech[grepl('eddy covariance', d$meas.tech)] <- 'ec'
  d$meas.tech[grepl('wind tunnel', d$meas.tech)] <- 'wt'
  d$meas.tech[grepl('chamber', d$meas.tech)] <- 'chamber'

  # Simplify measurement techniques
  d$meas.tech2 <- d$meas.tech
  d$meas.tech2[d$meas.tech %in% c('ihf', 'zinst', 'micro met', 'bls', 'agm', 'fides', 'ec')] <- 'micro met'
  print(table(d$meas.tech, d$meas.tech2))

  # Sort out incorporation
  d$incorp.orig <- d$incorp
  d$incorp[d$incorp == 'Double discs'] <- 'Shallow'
  d$incorp[d$incorp == 'Plough'] <- 'Deep'
  d$incorp <- droplevels(factor(tolower(d$incorp)))

  # Soil moisture
  d$soil.moist <- factor(tolower(d$soil.moist), levels = c('wet', 'dry', 'wet frozen'))
  # Some values entered as fraction, some as percent
  # NTS: Belongs somewhere else!
  d$soil.water[!is.na(d$soil.water) & d$soil.water > 1] <- d$soil.water[!is.na(d$soil.water) & d$soil.water > 1]/100


  return(d)
}

addDummyVars <- function(d) {

  # Factor levels, designed to match lm output
  if('man.source' %in% names(d)) {
    for(i in levels(d$man.source)) {
      d[, paste0('man.source', i)] <- d$man.source == i
    }
  }

  if('app.method' %in% names(d)) {
    for(i in levels(d$app.method)) {
      d[, paste0('app.method', i)] <- d$app.method == i
    }
  }

  if('app.method2' %in% names(d)) {
    for(i in levels(d$app.method2)) {
      d[, paste0('app.method2', i)] <- d$app.method == i
    }
  }

  if('soil.type' %in% names(d)) {
    for(i in tolower(levels(d$soil.type))) {
      d[, paste0('soil.type', i)] <- d$soil.type == i
    }
  }

  if('soil.type2' %in% names(d)) {
    for(i in tolower(levels(d$soil.type2))) {
      d[, paste0('soil.type2', i)] <- d$soil.type2 == tolower(i)
    }
  }

  if('crop' %in% names(d)) {
    for(i in levels(d$crop)) {
      d[, paste0('crop', i)] <- d$crop == i
    }
  }

  if('inst' %in% names(d)) {
    for(i in levels(d$inst)) {
      d[, paste0('inst', i)] <- d$inst == i
    }
  }

  if('incorp' %in% names(d)) {
    for(i in levels(d$incorp)) {
      d[, paste0('incorp', i)] <- d$incorp == i
    }
  }

  # Interactions, designed to match lm output
  if('app.method' %in% names(d) & 'man.source' %in% names(d)) {
    for(i in levels(d$app.method)) {
      for(j in levels(d$man.source)) {
        d[, paste0('app.method', i,'.man.source', j)] <- d$app.method == i & d$man.source == j
      }
    }  
  }

  if('app.method' %in% names(d) & 'crop' %in% names(d)) {
    for(i in levels(d$app.method)) {
      for(j in levels(d$crop)) {
        d[, paste0('app.method', i,'.crop', j)] <- d$app.method == i & d$crop == j
      }
    }  
  }

  for(i in levels(d$app.method)) {
    for(j in c('man.dm', 'man.tan', 'man.ph', 'app.rate', 'tan.app', 'air.temp', 'soil.temp', 'wind.2m', 'rad', 'crop.z')) {
      if('app.method' %in% names(d) & j %in% names(d)) {
        d[, paste0('app.method', i,'.', j)] <- (d$app.method == i)*d[, j]
      }
    }  
  }

  for(i in levels(d$crop)) {
    for(j in c('man.dm', 'man.tan', 'man.ph', 'app.rate', 'tan.app', 'air.temp', 'soil.temp', 'wind.2m', 'rad', 'crop.z')) {
      if('crop' %in% names(d) & j %in% names(d)) {
        d[, paste0('crop', i,'.', j)] <- (d$crop == i)*d[, j]
      }
    }  
  }

  return(d)
}

makePOSIX <- function(d) {

  # Sort out interval dates and times
  # All tz set to GMT to avoid problems with daylight savings (assumed to not be present in any data set)
  for(i in c('t.start', 't.end', 'app.start')) {
    d[, i] <- as.POSIXct(d[, i], format = '%Y-%m-%d %H:%M', tz = 'GMT')
  }

  return(d)
}


fixALFAMCSV <- function(d) {

  # Make colors character
  for(i in names(d)[grepl('^col\\.', names(d))]) {
    d[, i] <- as.character(d[, i])
  }

  # Fix dates
  for(i in c('t.start', 't.end', 'app.start')) {
    d[, i] <- as.POSIXct(d[, i], format = '%Y-%m-%d %H:%M', tz = 'GMT')
  }

  # Make inst code character
  d$inst <- as.character(d$inst)

  return(d)

}


summALFAM <- function(d, normalize = FALSE, ...) {

  require(plyr)

  # Sort
  d <- d[order(d$pmid, d$ct),]

  d$uexper <- paste(d$inst, d$proj, d$exper, sep = '.')

  ds <- ddply(d, c('database', 'institute', 'inst', 'country', 'file', 'proj', 'exper', 'exper2', 'eid', 'field', 'plot', 'pid', 'pmid'), 
	      summarise, 

              # Misc
              pub.id = pub.id[1],
              pub.info = pub.info[1],

              # Location info
	      lat = lat[1],
	      long = long[1],
	      topo = topo[1],
	      plot.area = plot.area[1],
              plot = plot[1],
              treat = treat[1],
              rep = rep[1],
              rep2 = rep2[1],

              # File info
              first.row.in.file = min(row.in.file), 
	      last.row.in.file = max(row.in.file), 

              # Soil
              clay = clay[1], 
	      silt = silt[1], 
	      sand = sand[1], 
	      oc = oc[1], 
              soil.type = soil.type[1],
              soil.type2 = soil.type2[1],
              soil.water = soil.water[1], 
              soil.moist = soil.moist[1], 
	      soil.ph = soil.ph[1],
              soil.dens = soil.dens[1], 
              #v.water = v.water[1], 
	      crop.res = crop.res[1],
              till = till[1],

	      # Weather, weighted means for most
        air.temp.6  =  if(any(ct<=6))  sum((air.temp*dt)[ct<= 6]) /sum(dt[ct<= 6])  else NA,
        air.temp.12 =  if(any(ct<=12)) sum((air.temp*dt)[ct<= 12])/sum(dt[ct<= 12]) else NA,
        air.temp.24 =  if(any(ct<=24)) sum((air.temp*dt)[ct<= 24])/sum(dt[ct<= 24]) else NA,
        air.temp.48 =  if(any(ct<=48)) sum((air.temp*dt)[ct<= 48])/sum(dt[ct<= 48]) else NA,
        air.temp.72 =  if(any(ct<=72)) sum((air.temp*dt)[ct<= 72])/sum(dt[ct<= 72]) else NA,
        air.temp.mn = sum(air.temp*dt)/sum(dt),

        soil.temp.6  =  if(any(ct<=6))  sum((soil.temp*dt)[ct<= 6]) /sum(dt[ct<= 6])  else NA,
        soil.temp.12 =  if(any(ct<=12)) sum((soil.temp*dt)[ct<= 12])/sum(dt[ct<= 12]) else NA,
        soil.temp.24 =  if(any(ct<=24)) sum((soil.temp*dt)[ct<= 24])/sum(dt[ct<= 24]) else NA,
        soil.temp.48 =  if(any(ct<=48)) sum((soil.temp*dt)[ct<= 48])/sum(dt[ct<= 48]) else NA,
        soil.temp.72 =  if(any(ct<=72)) sum((soil.temp*dt)[ct<= 72])/sum(dt[ct<= 72]) else NA,
        soil.temp.mn = sum(soil.temp*dt)/sum(dt),

        rad.6  = if(any(ct<=6))  sum((rad*dt)[ct<= 6]) /sum(dt[ct<= 6])  else NA,
        rad.12 = if(any(ct<=12)) sum((rad*dt)[ct<= 12])/sum(dt[ct<= 12]) else NA,
        rad.24 = if(any(ct<=24)) sum((rad*dt)[ct<= 24])/sum(dt[ct<= 24]) else NA,
        rad.48 = if(any(ct<=48)) sum((rad*dt)[ct<= 48])/sum(dt[ct<= 48]) else NA,
        rad.72 = if(any(ct<=72)) sum((rad*dt)[ct<= 72])/sum(dt[ct<= 72]) else NA,
        rad.mn = sum(rad*dt)/sum(dt),

        wind.6  = if(any(ct<=6))  sum((wind*dt)[ct<= 6] )/sum(dt[ct<= 6])  else NA,
        wind.12 = if(any(ct<=12)) sum((wind*dt)[ct<= 12])/sum(dt[ct<= 12]) else NA,
        wind.24 = if(any(ct<=24)) sum((wind*dt)[ct<= 24])/sum(dt[ct<= 24]) else NA,
        wind.48 = if(any(ct<=48)) sum((wind*dt)[ct<= 48])/sum(dt[ct<= 48]) else NA,
        wind.72 = if(any(ct<=72)) sum((wind*dt)[ct<= 72])/sum(dt[ct<= 72]) else NA,
        wind.mn = sum(wind*dt)/sum(dt),

        wind.2m.6  = if(any(ct<=6))  sum((wind.2m*dt)[ct<= 6] )/sum(dt[ct<= 6])  else NA,
        wind.2m.12 = if(any(ct<=12)) sum((wind.2m*dt)[ct<= 12])/sum(dt[ct<= 12]) else NA,
        wind.2m.24 = if(any(ct<=24)) sum((wind.2m*dt)[ct<= 24])/sum(dt[ct<= 24]) else NA,
        wind.2m.48 = if(any(ct<=48)) sum((wind.2m*dt)[ct<= 48])/sum(dt[ct<= 48]) else NA,
        wind.2m.72 = if(any(ct<=72)) sum((wind.2m*dt)[ct<= 72])/sum(dt[ct<= 72]) else NA,
        wind.2m.mn = sum(wind.2m*dt)/sum(dt),

	      rain.1  = if(any(ct<=1))  sum(rain[ct<=1])  else NA,
	      rain.6  = if(any(ct<=6))  sum(rain[ct<=6])  else NA,
	      rain.12 = if(any(ct<=12)) sum(rain[ct<=12]) else NA,
	      rain.24 = if(any(ct<=24)) sum(rain[ct<=24]) else NA,
	      rain.48 = if(any(ct<=48)) sum(rain[ct<=48]) else NA,
	      rain.72 = if(any(ct<=72)) sum(rain[ct<=72]) else NA,
	      rain.tot = sum(rain),

        rain.rate.1  = if(any(ct<=1))  sum(rain[ct<= 1] )/sum(dt[ct<= 1])  else NA,
        rain.rate.6  = if(any(ct<=6))  sum(rain[ct<= 6] )/sum(dt[ct<= 6])  else NA,
        rain.rate.12 = if(any(ct<=12)) sum(rain[ct<= 12])/sum(dt[ct<= 12]) else NA,
        rain.rate.24 = if(any(ct<=24)) sum(rain[ct<= 24])/sum(dt[ct<= 24]) else NA,
        rain.rate.48 = if(any(ct<=48)) sum(rain[ct<= 48])/sum(dt[ct<= 48]) else NA,
        rain.rate.72 = if(any(ct<=72)) sum(rain[ct<= 72])/sum(dt[ct<= 72]) else NA,
        rain.rate.mn = sum(rain)/sum(dt),

        rh.6  = if(any(ct<=6))  sum((rh*dt)[ct<= 6]) /sum(dt[ct<= 6])  else NA,
        rh.12 = if(any(ct<=12)) sum((rh*dt)[ct<= 12])/sum(dt[ct<= 12]) else NA,
        rh.24 = if(any(ct<=24)) sum((rh*dt)[ct<= 24])/sum(dt[ct<= 24]) else NA,
        rh.48 = if(any(ct<=48)) sum((rh*dt)[ct<= 48])/sum(dt[ct<= 48]) else NA,
        rh.72 = if(any(ct<=72)) sum((rh*dt)[ct<= 72])/sum(dt[ct<= 72]) else NA,
        rh.mn = sum(rh*dt)/sum(dt),

	      air.temp.z = air.temp.z[1],

	      soil.temp.z = soil.temp.z[1],
	      wind.z = wind.z[1],

	      wind.loc = wind.loc[1],
	      far.loc = far.loc[1],

	      # Manure composition
	      man.source = man.source[1], 
	      man.source.orig = man.source.orig[1], 
	      man.bed = man.bed[1], 
	      man.con = man.con[1], 
	      man.trt1 = man.trt1[1], 
	      man.trt2 = man.trt2[1], 
	      man.stor = man.stor[1], 
	      man.dm = man.dm[1], 
        man.tkn = man.tkn[1], 
        man.tan = man.tan[1], 
        man.tic = man.tic[1], 
        man.ua = man.ua[1], 
	      man.ph = man.ph[1], 
        log.man.tan = log10(man.tan[1]), 
	      man.freeNH3 = man.freeNH3[1], 
	      man.eq.gasNH3 = man.eq.gasNH3[1], 
        acid = acid[1],

	      # Application info
	      date.start = date.start[1],
	      app.start = app.start[1],
	      app.start.orig = app.start.orig[1],
	      app.method = app.method[1],
	      app.method.orig = app.method.orig[1],
	      app.method2 = app.method2[1],
	      app.rate = app.rate[1],
	      tan.app = tan.app[1],
	      incorp = incorp[1],
	      incorp.orig = incorp.orig[1],
	      time.incorp = time.incorp[1],
	      man.area = man.area[1],
	      dist.inj = dist.inj[1],
	      furrow.z = furrow.z[1],
	      furrow.w = furrow.w[1],
	      log.app.rate = log10(app.rate[1]),

	      # Crop info
	      crop = crop[1],
	      crop.orig = crop.orig[1],
	      crop.z = crop.z[1],
	      crop.area = crop.area[1],
	      lai = lai[1],

	      # Emission measurements
	      meas.tech = meas.tech[1],
	      meas.tech.orig = meas.tech.orig[1],
	      meas.tech2 = meas.tech2[1],
        t.start.p = min(t.start),
        t.end.p = max(t.end),
        dt1 = dt[1],
        dt.min = min(dt), 
        dt.max = max(dt), 
        ct.min = min(ct), 
        ct.max = max(ct), 
        ct1 = ct[1], 

        # Shift info
	      n.ints = length(interval),
        n.int.duplicates = sum(duplicated(interval)), 
	      int.min = min(interval), 
	      int.max = max(interval), 
	      int.t.mismatches = sum(t.start[-1] < t.end[-length(t.end)]), 
        missing.ints = sum(diff(sort(interval)) - 1), 

	      # Emission
        j.NH31 = j.NH3[1],
        j.rel1 = j.rel[1],
        ##j.24 = if(sum(!is.na(e.cum))>1 && max(ct)>24) approx(x = ct, y = j.NH3, xout = 24, method = 'linear')$y else NA, 
        ##j.48 = if(sum(!is.na(e.cum))>1 && max(ct)>48) approx(x = ct, y = j.NH3, xout = 48, method = 'linear')$y else NA, 
	      ##j.end = j.NH3[length(j.NH3)],

        e.1 =  if(sum(!is.na(e.cum)) > 1 & max(ct) >= 1)  approx(x = c(ct), y = c(e.cum), xout = 1,  method = 'linear')$y else NA, 
        e.4 =  if(sum(!is.na(e.cum)) > 1 & max(ct) >= 4)  approx(x = c(ct), y = c(e.cum), xout = 4,  method = 'linear')$y else NA, 
        e.6 =  if(sum(!is.na(e.cum)) > 1 & max(ct) >= 6)  approx(x = c(ct), y = c(e.cum), xout = 6,  method = 'linear')$y else NA, 
        e.12 = if(sum(!is.na(e.cum)) > 1 & max(ct) >= 12) approx(x = c(ct), y = c(e.cum), xout = 12, method = 'linear')$y else NA, 
        e.24 = if(sum(!is.na(e.cum)) > 1 & max(ct) >= 24) approx(x = c(ct), y = c(e.cum), xout = 24, method = 'linear')$y else NA, 
        e.48 = if(sum(!is.na(e.cum)) > 1 & max(ct) >= 48) approx(x = c(ct), y = c(e.cum), xout = 48, method = 'linear')$y else NA, 
        e.72 = if(sum(!is.na(e.cum)) > 1 & max(ct) >= 72) approx(x = c(ct), y = c(e.cum), xout = 72, method = 'linear')$y else NA, 
        e.96 = if(sum(!is.na(e.cum)) > 1 & max(ct) >= 96) approx(x = c(ct), y = c(e.cum), xout = 96, method = 'linear')$y else NA, 
        e.final = e.cum[length(e.cum)], 

        e.rel.1 =  if(sum(!is.na(e.rel)) > 1 & max(ct) >= 1)  approx(x = c(ct), y = c(e.rel), xout = 1,  method = 'linear')$y else NA, 
        e.rel.4 =  if(sum(!is.na(e.rel)) > 1 & max(ct) >= 4)  approx(x = c(ct), y = c(e.rel), xout = 4,  method = 'linear')$y else NA, 
        e.rel.6 =  if(sum(!is.na(e.rel)) > 1 & max(ct) >= 6)  approx(x = c(ct), y = c(e.rel), xout = 6,  method = 'linear')$y else NA, 
        e.rel.12 = if(sum(!is.na(e.rel)) > 1 & max(ct) >= 12) approx(x = c(ct), y = c(e.rel), xout = 12, method = 'linear')$y else NA, 
        e.rel.24 = if(sum(!is.na(e.rel)) > 1 & max(ct) >= 24) approx(x = c(ct), y = c(e.rel), xout = 24, method = 'linear')$y else NA, 
        e.rel.48 = if(sum(!is.na(e.rel)) > 1 & max(ct) >= 48) approx(x = c(ct), y = c(e.rel), xout = 48, method = 'linear')$y else NA, 
        e.rel.72 = if(sum(!is.na(e.rel)) > 1 & max(ct) >= 72) approx(x = c(ct), y = c(e.rel), xout = 72, method = 'linear')$y else NA, 
        e.rel.96 = if(sum(!is.na(e.rel)) > 1 & max(ct) >= 96) approx(x = c(ct), y = c(e.rel), xout = 96, method = 'linear')$y else NA, 
        e.rel.final = e.rel[length(e.rel)], 

        # Notes
        notes = paste(unique(notes), collapse = ' '),
        flag = flag[1]
  )

  # Check for duplicates
  if(sum(duplicated(ds$pmid)) > 0) {
    stop('In ALFAM_functions summALFAM() problem with duplicated pmid. See code YerhB176.')
  }

  # This doesn't seem to work in the ddply call
  ds$anyincorp <- 'No'
  ds$anyincorp[ds$incorp != 'None'] <- 'Yes'
  ds$anyincorp <- factor(ds$anyincorp)

  if(normalize) {
    for(i in names(ds)) {
      if(class(ds[, i])[1] == 'numeric' & !grepl('^e', i)) ds[, i] <- normalize(ds[, i], ...) # [1] just for multi-class classes (POSIX)
    }
  }

  #pchs <- c(bc = 1, os = 2, cs = 3, ts = 5)
  #cols <- c(bc = 'red', os = 'blue', cs = 'darkgreen', ts = 'black')
  #ds$pch.app.method = pchs[as.character(ds$app.method)]
  #ds$col.app.method = cols[as.character(ds$app.method)]

  rownames(ds) <- ds$pmid
  return(ds)

}

normalize <- function(x, shift.only = TRUE) {
  if(shift.only) return(x - mean(na.omit(x)))
  return((x - mean(na.omit(x)))/sd(na.omit(x)))
}

mplot <- function(x, y,xlim, ylim, n = 50, col = gray.colors(100), xlab = '', ylab = '', trans, leg.loc = 'topright', ...) {
  d <- na.omit(data.frame(x = x, y = y))
  d <- subset(d, is.finite(x) & is.finite(y))

  if(missing(xlim)) xlim = range(d$x)*c(0.98, 1.02)
  if(missing(ylim)) ylim = range(d$y)*c(0.98, 1.02)

  xb <- seq(xlim[1], xlim[2], length.out = n)
  yb <- seq(ylim[1], ylim[2], length.out = n)
  #x <- cut(x, breaks = xb)
  #y <- cut(y, breaks = yb)

  m <- matrix(NA, nrow = n-1, ncol = n-1)

  for(i in 1:(n-1)) {
    for(j in 1:(n-1)) {
      s <- sum(d$x<xb[i+1] & d$x>= xb[i] & d$y<yb[j+1] & d$y>= yb[j])
      if(s>0) m[i, j] <- s
    }
  }

  if(!missing(trans)) m <- eval(parse(text = paste0(trans, '(m)')))
  image(m, axes = FALSE, col = col, xlab = xlab, ylab = ylab, useRaster = TRUE, ...)
  par(usr = c(xlim[1], xlim[2], ylim[1], ylim[2]))
  axis(1)
  axis(2, at = pretty(ylim))
  box()
  if(!is.na(leg.loc) && !is.null(leg.loc)) legend(leg.loc, paste0(round(min(na.omit(c(m))), 1), '-', round(max(na.omit(c(m))), 1)), pch = -1, bg = 'white')
}

# Colors from monitoR
gray.1 <- function(n = 30) gray(seq(1, 0,length.out = n))
gray.2 <- function(n = 30) gray(1-seq(0, 1,length.out = n)^2)
gray.3 <- function(n = 30) gray(1-seq(0, 1,length.out = n)^3)
rainbow.1 <- function(n = 15) rev(rainbow(n))
topo.1 <- function(n = 12) rev(topo.colors(n))

# Drop factors
dropFactors <- function(d) {
  for(i in 1:ncol(d)) if(class(d[, i]) == 'factor') d[, i] <- as.character(d[, i])
  return(d)
}

# Logit and logistic transformation
logistic <- function(x) exp(x)/(1 + exp(x))
logit <- function(p) log(p/(1 - p))

# Add a row of sums to data frame
# Set vals to NA for those that should not be filled in
# Rows must be integer for now
rsum <- function(x, rows = 1:nrow(x), vals) {
  x <- dropFactors(x)
  s <- rep(NA, ncol(x))
  for(i in 1:ncol(x)) { 
    if(class(x[, i]) %in% c('integer', 'numeric')) {
      s[i] <- sum(x[rows, i])
    } else {
      s[i] <- length(unique(x[rows, i]))
    }
  }
  names(s) <- names(x)
  x <- rbind(x, s)
  if(!missing(vals)) x[nrow(x), which(!is.na(vals))] <- vals
  return(x)
}

# Add a row of means to data frame
# Set vals to NA for those that should not be filled in
# Rows must be integer for now
colmeans <- function(x, rows = 1:nrow(x), vals) {
  x <- dropFactors(x)
  s <- rep(NA, ncol(x))
  for(i in 1:ncol(x)) { 
    if(class(x[, i]) %in% c('integer', 'numeric')) {
      s[i] <- mean(na.omit(x[rows, i]))
    } else {
      s[i] <- length(unique(x[rows, i]))
    }
  }
  names(s) <- names(x)
  x <- rbind(x, s)
  if(!missing(vals)) x[nrow(x), which(!is.na(vals))] <- vals
  return(x)
}

# Round complete data frame
rounddf <- function(x, digits = 2) {
  for(i in 1:ncol(x)) if(class(x[, i])[1] == 'numeric') x[, i] <- signif(x[, i], digits)
  return(x)
}

# Convert lat/long in degrees min sec to decimal degrees
# From 10d12m12.2s to 10.xxxx
DMS2DD <- function(x) {
  y <- suppressWarnings(as.numeric(x))
  for(i in which(grepl('[dms]', x))) {
    mins <- secs <- 0
    tt <- strsplit(x[i], 'd')[[1]]
    degs <- as.numeric(tt[1])
    if(length(tt)>1) {
      tt <- strsplit(tt[2], 'm')[[1]]
      mins <- as.numeric(tt[1])
    }
    if(length(tt)>1) {
      secs <- as.numeric(strsplit(tt[2], '[s$]')[[1]])
    }
    y[i] <- degs + mins/60 + secs/3600
  }
  return(y)
}

# From monitoR
rbindf <- function(...) {
  
  l <- list(...)
  if(length(l) == 1) l <- l[[1]]
  nn <- length(l)

  x <- l[[1]]
  if(length(l)>1){
      for(i in 2:nn) {
        y <- l[[i]]
        if(!all(yinx <- names(y) %in% names(x))) {
          x[, names(y)[!yinx]] <- NA
        } 
        if(!all(xiny <- names(x) %in% names(y))) {
           y[, names(x)[!xiny]] <- NA
        } 
        x <- rbind(x, y)
      }
  }
  return(x)
}

# Needs lowercase column names for silt etc.
# Soil texture and moisture
addSoilText <- function(d) {

  # Fill in sand, silt, clay from other two
  d$sand[is.na(d$sand) & !is.na(d$silt) & !is.na(d$clay)] <- 100 - d$silt[is.na(d$sand) & !is.na(d$silt) & !is.na(d$clay)] - d$clay[is.na(d$sand) & !is.na(d$silt) & !is.na(d$clay)]
  d$silt[is.na(d$silt) & !is.na(d$sand) & !is.na(d$clay)] <- 100 - d$sand[is.na(d$silt) & !is.na(d$sand) & !is.na(d$clay)] - d$clay[is.na(d$silt) & !is.na(d$sand) & !is.na(d$clay)]
  d$clay[is.na(d$clay) & !is.na(d$silt) & !is.na(d$sand)] <- 100 - d$silt[is.na(d$clay) & !is.na(d$silt) & !is.na(d$sand)] - d$sand[is.na(d$clay) & !is.na(d$silt) & !is.na(d$sand)]
  
  # Which soil types are missing?
  missing.type <- is.na(d$soil.type) | d$soil.type == ''
  
  # To lower
  d$soil.type <- tolower(d$soil.type)
  
  # Assign soil types based on USDA definitions
  is.sand <- d$sand >= 85 & d$silt + 1.5*d$clay <= 15
  d$soil.type[missing.type & is.sand] <- 'sand'
  
  is.loamy.sand <- (d$sand >= 85 & d$sand <= 90 & d$silt + 1.5*d$clay >= 15) | (d$sand >= 75 & d$sand <= 85 & d$silt + 2*d$clay <= 30)
  d$soil.type[missing.type & is.loamy.sand] <- 'loamy.sand'
  
  is.sandy.loam <- d$clay <= 20 & ((d$silt + 2*d$clay > 30 & d$sand >= 52) | (d$clay < 7 & d$silt < 50 & d$clay >= 43 & d$clay <= 50))
  d$soil.type[missing.type & is.sandy.loam] <- 'sandy.loam'
  
  is.loam <- d$clay >= 7 & d$clay <= 27 & d$silt >= 28 & d$silt <= 50 & d$sand < 52
  d$soil.type[missing.type & is.loam] <- 'loam'
  
  is.silt.loam <- (d$silt >= 50 & d$clay >= 12 & d$clay <= 27) | (d$silt >= 50 & d$silt <= 80 & d$clay < 12)
  d$soil.type[missing.type & is.silt.loam] <- 'silt.loam'
  
  is.silt <- d$silt >= 80 & d$clay < 12
  d$soil.type[missing.type & is.silt] <- 'silt'
  
  is.sandy.clay.loam <- d$clay >= 20 & d$clay <= 35 & d$silt >= 28 & d$sand <= 45
  d$soil.type[missing.type & is.sandy.clay.loam] <- 'sandy.clay.loam'
  
  is.clay.loam <- d$clay >= 27 & d$clay <= 40 & d$sand >= 20 & d$sand <= 45
  d$soil.type[missing.type & is.clay.loam] <- 'clay.loam'
  
  is.silty.clay.loam <- d$clay >= 27 & d$clay <= 40 & d$sand < 20
  d$soil.type[missing.type & is.silty.clay.loam] <- 'silty.clay.loam'
  
  is.sandy.clay <- d$clay >= 35 & d$sand >= 45
  d$soil.type[missing.type & is.sandy.clay] <- 'sandy.clay'
  
  is.silty.clay <- d$clay >= 40 & d$silt >= 40
  d$soil.type[missing.type & is.silty.clay] <- 'silty.clay'
  
  is.clay <- d$clay >= 40 & d$sand < 45 & d$silt < 40
  d$soil.type[missing.type & is.clay] <- 'clay'
  
  # Set zavel to loam
  d$soil.type[d$soil.type == 'zavel'] <- 'loam'
  
  # Simplify soil types
  d$soil.type2 <- d$soil.type
  d$soil.type2[grep('loam$', d$soil.type)] <- 'loam'
  d$soil.type2[grep('clay$', d$soil.type)] <- 'clay'
  d$soil.type2[grep('silt$', d$soil.type)] <- 'silt'
  d$soil.type2[grep('clay$', d$soil.type)] <- 'clay'
  d$soil.type2[grep('sand$', d$soil.type)] <- 'sand'

  return(d)
}

# Calculates soil wetness as water-filled pore space
calcSoilMoist <- function(d, cutoff = 0.5) {

  #
  d$v.pore <- 1 - d$soil.dens/2.6
  d$v.water <- d$soil.water/d$v.pore

  # Set soil moisture
  d$notes[is.na(d$soil.moist) & !is.na(d$v.water)] <- paste(d$notes[is.na(d$soil.moist) & !is.na(d$v.water)], ', soil.moist estimated from water-filled pore space, with a cutoff of', cutoff, '.')
  d$soil.moist[is.na(d$soil.moist) & !is.na(d$v.water) & d$v.water >= cutoff] <- 'wet'
  d$soil.moist[is.na(d$soil.moist) & !is.na(d$v.water) & d$v.water < cutoff] <- 'dry'

  return(d)

}

# Get coefficients from an lm model
# Written for use with ldply operation on a list of models
getCoefs <- function(mod) {

  tt <- as.data.frame(summary(mod)$coefficients)
  names(tt) <- c('coef', 'se', 'tval', 'pval')
  tt <- insertCol(rownames(tt), tt, 1, name = 'term')
  tt$term <- tolower(gsub('[)(]', '', tt$term))
  rownames(tt) <- NULL

  return(tt)

}

# Get coefficients from an lm model
# Written for use with ldply operation on a list of models
# This version specific to app.method models
getCoefsAM <- function(mod) {

  tt <- c(coefficients(mod), NA, NA, NA, NA, summary(mod)$coefficients[2, 4])
  names(tt) <- c('int', 'alt', 'relint', 'nint', 'nalt', 'releffect', 'pval')
  tt['relint'] <- 100*(10^tt['int'])
  tt['releffect'] <- 100*(10^tt['alt'] - 1)
  tt['nint'] <- sum(mod$model$app.method == unique(mod$model$app.method)[1])
  tt['nalt'] <- sum(mod$model$app.method == unique(mod$model$app.method)[2])

  return(tt)

}

insertCol <- function(cc, df, where, name = 'X') {

  nc <- ncol(df)
  if(where>1) {
    df <- cbind(df[,1:(where-1)],cc,df[,where:nc])
    names(df)[where] <- name
    return(df)
  } 
  df <- cbind(cc,df)
  names(df)[where] <- name
  return(df)
}

# Get and organize fixed effects from an lme model
# Specific for app.method*covariate models
getFEAMCV <- function(mod, digits, alpha, cols = 'table') {

  feffects <- as.data.frame(summary(mod)$tTable)
  feffects$coef <- rownames(feffects)
  feffects$coef <- gsub('app.method', '', feffects$coef)
  feffects$app.method <- gsub(':.+', '', feffects$coef)
  feffects$covar <- gsub('.+:', '', feffects$coef)
  feffects$covar[1:4] <- NA
  feffects$releffect <- 100*(10^feffects$Value - 1)
  feffects <- feffects[ , c('app.method', 'covar', 'Value', 'releffect', 'Std.Error', 't-value', 'p-value')]
  feffects$sig <- ifelse(feffects[ , 'p-value'] < alpha, '*', '')
  feffects <- rounddf(feffects, digits)
  if(cols == 'table') {
    names(feffects) <- c('App. method', 'Covar.', 'Coef.', 'Rel. effect', '*se*', '*t*-value', '*P*-value', 'Sig.')
  } else if(cols == 'code') {
    names(feffects) <- c('app.method', 'covar', 'coef', 'releffect', 'se', 'tval', 'pval', 'sig')
  }
  rownames(feffects) <- NULL

  return(feffects)

}

# Gets fixed effects from mixed-effects model
getFE <- function(mod, digits, alpha = 0.05, cols = 'table') {

  feffects <- as.data.frame(summary(mod)$tTable)
  feffects$coef <- rownames(feffects)
  feffects$releffect <- 100*(10^feffects$Value - 1)
  feffects <- feffects[ , c('coef', 'Value', 'Std.Error', 'releffect', 'DF', 't-value', 'p-value')]
  feffects$sig <- ifelse(feffects[ , 'p-value'] < alpha, '*', '')
  feffects <- rounddf(feffects, digits)
  rownames(feffects) <- NULL
  return(feffects)

}

# Gets random effects coefficients from mixed-effects model
getREMSAMCV <- function(mod, digits, alpha, cols = 'code') {

  mseffects <- as.data.frame(summary(mod)$coefficients$random$mxs)
  mseffects$term <- rownames(mseffects)
  mseffects$inst <- substring(mseffects$term, 1, 3)
  mseffects$soil <- gsub('^.+\\.', '', mseffects$term)
  mseffects$meas.tech <- gsub('^.+\\/', '', mseffects$term)
  mseffects$meas.tech <- gsub('\\..+', '', mseffects$meas.tech)
  mseffects <- mseffects[ , c('inst', 'meas.tech', 'soil', '(Intercept)')]
  names(mseffects)[4] <- 'value'
  mseffects$rel.effect <- 100*(10^mseffects$value - 1)
  if(cols == 'table') {
    names(mseffects) <- c('Code', 'Meas. tech.', 'Soil', 'Value', 'Rel. effect')
  }
  rownames(mseffects) <- NULL
  mseffects <- rounddf(mseffects, digits)

  return(mseffects)
}

getIEAMCV <- function(mod, digits, alpha, cols = 'code') {

  insteffects <- as.data.frame(summary(mod)$coefficients$random$inst)
  insteffects$inst <- rownames(insteffects)
  insteffects <- insteffects[ , c('inst', '(Intercept)')]
  names(insteffects)[2] <- 'value'
  insteffects$rel.effect <- 100*(10^insteffects$value - 1)
  if(cols == 'table') {
    names(insteffects) <- c('Code', 'Value')
  }
  rownames(insteffects) <- NULL
  insteffects <- rounddf(insteffects, digits)

  return(insteffects)
}

date2char <- function(d) {

  for(i in names(d)) {

    if(class(d[ , i])[1] == 'POSIXct') d[ , i] <- as.character(d[ , i], format = '%d-%m-%Y %H:%M')

  }

  d
}

geomean <- function(x) exp(mean(log(x)))

subsetd <- function(d, ...) {
  droplevels(subset(d, ...))
}


dfsumm <- function(x) {

   if(!class(x)[1] %in% c("data.frame", "matrix")) 
     stop("You can't use dfsumm on ", class(x), " objects!")

   cat("\n", nrow(x), "rows and", ncol(x), "columns")
   cat("\n", nrow(unique(x)), "unique rows\n")

   s <- matrix(NA, nrow = 7, ncol = ncol(x))

   for(i in 1:ncol(x)) {

     iclass <- class(x[, i])[1]

     s[1, i] <- paste(class(x[, i]), collapse = " ")

     y <- x[, i]

     yc <- na.omit(y)

     if(iclass%in%c("factor", "ordered")) { 
       s[2:4, i] <- levels(yc)[c(1, length(levels(yc)), round(mean(as.integer(yc))))] 
     } else if(iclass == "numeric") {
       s[2:4, i] <- as.character(signif(c(min(yc), max(yc), mean(yc)), 3)) 
     } else if(iclass == "logical") {
       s[2:4, i] <- as.logical(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2])) 
     } else if(grepl('POSIX', iclass[1])) {
       s[2:4, i] <- as.character(c(min(yc), max(yc), mean(yc)), format = '%Y-%m-%d %H:%M:%S') 
     } else {
       s[2:4, i] <- as.character(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2]))
     }

     s[5, i] <- length(unique(yc))
     s[6, i] <- sum(is.na(y))
     s[7, i] <- !is.unsorted(yc)
   }

   s <- as.data.frame(s)

   rownames(s) <- c("Class", "Minimum", "Maximum", "Mean", "Unique (excld. NA)", "Missing values", "Sorted") 
   colnames(s) <- colnames(x)

   print(s)

}

# A function for summarizing data frames
# S. Hafner
# Modified: 27 April 2016
dfsumm <- function(x) {

   if(!class(x)[1] %in% c("data.frame", "matrix")) 
     stop("You can't use dfsumm on ", class(x), " objects!")

   cat("\n", nrow(x), "rows and", ncol(x), "columns")
   cat("\n", nrow(unique(x)), "unique rows\n")

   s <- matrix(NA, nrow = 7, ncol = ncol(x))

   for(i in 1:ncol(x)) {

     iclass <- class(x[, i])[1]

     s[1, i] <- paste(class(x[, i]), collapse = " ")

     y <- x[, i]

     yc <- na.omit(y)

     if(all(is.na(y))) {
       s[2:4, i] <- NA
     } else if(iclass%in%c("factor", "ordered")) { 
       s[2:4, i] <- levels(yc)[c(1, length(levels(yc)), round(mean(as.integer(yc))))] 
     } else if(iclass == "numeric") {
       s[2:4, i] <- as.character(signif(c(min(yc), max(yc), mean(yc)), 3)) 
     } else if(iclass == "logical") {
       s[2:4, i] <- as.logical(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2])) 
     } else if(grepl('POSIX', iclass[1])) {
       s[2:4, i] <- as.character(c(min(yc), max(yc), mean(yc)), format = '%Y-%m-%d %H:%M:%S') 
     } else {
       s[2:4, i] <- as.character(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2]))
     }

     s[5, i] <- length(unique(yc))
     s[6, i] <- sum(is.na(y))
     s[7, i] <- !is.unsorted(yc)
   }

   s <- as.data.frame(s)

   rownames(s) <- c("Class", "Minimum", "Maximum", "Mean", "Unique (excld. NA)", "Missing values", "Sorted") 
   colnames(s) <- colnames(x)

   print(s)

}

#dropBlankCols <- function(d) {
#
#
#
#}


# A function for summarizing data frames with a single column
# S. Hafner
# Modified: 27 April 2016
vsumm <- function(x) {

   if(!class(x)[1] %in% c("data.frame", "matrix")) 
     stop("You can't use dfsumm on ", class(x), " objects!")

   s <- matrix(NA, nrow = 7, ncol = ncol(x))

   for(i in 1:ncol(x)) {

     iclass <- class(x[, i])[1]

     s[1, i] <- paste(class(x[, i]), collapse = " ")

     y <- x[, i]

     yc <- na.omit(y)

     if(all(is.na(y))) {
       s[2:4, i] <- NA
     } else if(iclass%in%c("factor", "ordered")) { 
       s[2:4, i] <- levels(yc)[c(1, length(levels(yc)), round(mean(as.integer(yc))))] 
     } else if(iclass == "numeric") {
       s[2:4, i] <- as.character(signif(c(min(yc), max(yc), mean(yc)), 3)) 
     } else if(iclass == "logical") {
       s[2:4, i] <- as.logical(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2])) 
     } else if(grepl('POSIX', iclass[1])) {
       s[2:4, i] <- as.character(c(min(yc), max(yc), mean(yc)), format = '%Y-%m-%d %H:%M:%S') 
     } else {
       s[2:4, i] <- as.character(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2]))
     }

     s[5, i] <- length(unique(yc))
     s[6, i] <- sum(is.na(y))
     s[7, i] <- length(y)
   }

   s <- as.data.frame(s)

   rownames(s) <- c("Class", "Minimum", "Maximum", "Mean", "Unique (excld. NA)", "Missing values", "Total rows") 
   colnames(s) <- colnames(x)

   cat('\n')
   print(s)

}



pr2 <- function(m, p) {

  tss <- sum((m - mean(m))^2)
  rss <- sum((m - p)^2)
  return(1 - rss/tss)

}

rmse <- function(m, p) {

  rss <- sum((m - p)^2)
  return(sqrt(rss/length(m)))

}

mbe <- function(m, p) {

    return(mean(m - p))

}
