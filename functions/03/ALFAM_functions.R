# Functions for reading in ALFAM2 data
# S. Hafner

readALFAM2File <- function(file, institute, version = '3.3') {

  # Read in data from multiple sheets ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  na.strings <- c('', 'NA', 'na', 'Na', 'NaN')

  chnglog <- as.data.frame(read_xlsx(file, sheet = 11, skip = 0))
  tempver <- as.numeric(chnglog[nrow(chnglog), 'Version'])

  # Submitter info
  submitter <- read_xlsx(file, sheet = 2, skip = 1, col_names = c('x', 'y'), na = na.strings)
  submitter <- data.frame(t(submitter[, 2]))
  submitter <- data.frame(submitter)
  names(submitter) <- c('institute', 'inst.abbrev', 'submitter', 'version', 'date')

  # Contributers - to save by institute and file eventually
  nms <- c('contributor', 'institute')
  contrib <- read_xlsx(file, sheet = 3, skip = 1, col_names = nms, na = na.strings)
  contrib <- contrib[rowSums(!is.na(contrib)) > 0, ]

  # Experiments
  nms <- c('proj', 'exper', 'pub.id', 'varied', 'emis.tech', 'conc.tech', 'det.lim', 'man.pH.tech', 'soil.pH.tech', 'notes.exper')
  exper <- read_xlsx(file, sheet = 4, skip = 1, col_names = nms, na = na.strings)
  exper <- data.frame(exper)
  exper <- exper[rowSums(!is.na(exper)) > 0, ]

  # Treatments
  nms <- c('proj', 'exper', 'treat', 'treat.descrip')
  treat <- read_xlsx(file, sheet = 5, skip = 1, col_names = nms, na = na.strings)
  treat <- data.frame(treat)
  treat <- treat[rowSums(!is.na(treat)) > 0, ]

  # Plots
  if (tempver < 6) {
    nms <- c('proj', 'pub.id', 'exper', 'field', 'plot', 'rep', 'plot.area', 'lat', 'long', 'country', 'topo', 
                      'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.water', 'soil.water.v', 'soil.moist', 'soil.ph', 'soil.dens', 
                      'crop.res', 'till', 'man.source', 'man.source.det', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.stor', 
                      'man.dm', 'man.vs', 'man.tkn', 'man.tan', 'man.tic', 'man.ua', 'man.vfa', 'man.ph', 
                      'app.start', 'app.end', 'app.method', 'app.rate', 'app.rate.unit', 'incorp', 'time.incorp', 
                      'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 'crop', 'crop.z', 'crop.area', 'lai', 'notes')
  } else {
    nms <- c('proj', 'pub.id', 'exper', 'field', 'plot', 'rep', 'plot.area', 'lat', 'long', 'country', 'topo', 
                      'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.water', 'soil.water.v', 'soil.moist', 'soil.ph', 'soil.dens', 
                      'crop.res', 'till', 'man.source', 'man.source.det', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.trt3', 'man.stor', 
                      'man.dm', 'man.vs', 'man.tkn', 'man.tan', 'man.tic', 'man.ua', 'man.vfa', 'man.ph', 
                      'app.start', 'app.end', 'app.method', 'app.rate', 'app.rate.unit', 'incorp', 'time.incorp', 
                      'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 'crop', 'crop.z', 'crop.area', 'lai', 'notes')
  }

  plots <- read_xlsx(file, sheet = 6, skip = 4, col_names = nms, na = na.strings)
  plots <- data.frame(plots)
  plots$row.in.file <- 1:nrow(plots) + 4
  plots <- plots[rowSums(!is.na(plots)) > 1, ]

  # Emission
  nms <- c('proj', 'exper', 'field', 'plot', 'treat', 'rep', 'interval', 't.start', 't.end', 'dt', 
                   'meas.tech', 'meas.tech.det', 'bg.dl', 'bg.val', 'bg.unit', 'j.NH3', 'j.NH3.unit', 'pH.surf', 
                   'air.temp', 'air.temp.z', 'soil.temp', 'soil.temp.z', 'soil.temp.surf', 
                   'rad', 'wind', 'wind.z', 
                   # Check these
                   'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit', 'rain', 'rh', 'wind.loc', 'far.loc', 'notes.emis')
  # NTS: Here and above, will need to specify column types in order to avoid blank columns taken as logical mode
  emis <- read_xlsx(file, sheet = 7, skip = 4, col_names = nms, na = na.strings)
  emis <- data.frame(emis)
  emis$row.in.file <- 1:nrow(emis) + 4
  emis <- emis[rowSums(!is.na(emis)) > 1, ]

  # NTS need to do this in read call!
  emis$soil.temp <- as.numeric(emis$soil.temp)

  # Field commonly missing but needed for *id
  if (all(is.na(c(plots$field, emis$field)))) {
    plots$field <- ''
    emis$field <- ''
  }

  # Publications
  pubs <- read_xlsx(file, sheet = 8, skip = 2, col_names = FALSE, na = na.strings)
  if (nrow(pubs) > 0) {
    names(pubs) <- c('pub.id', 'citation')
  } else {
    pubs <- data.frame(pub.id = NULL, citation = NULL)
  }
  pubs <- data.frame(pubs)

  return(list(submitter = submitter, contrib = contrib, exper = exper, treat = treat, plots = plots, emis = emis, pubs = pubs, file = file))

}

cleanALFAM <- function(obj) {

  submitter <- obj$submitter
  contrib <- obj$contrib
  exper <- obj$exper
  treat <- obj$treat
  plots <- obj$plots
  emis <- obj$emis
  pubs <- obj$pubs
  file <- obj$file

  # Work with plots data ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Sort out lat and long (change to decimal degrees if needed, add negative for W/S)
  plots$lat <- DMS2DD(plots$lat)
  plots$long <- DMS2DD(plots$long)

  # Dates and times
  plots$app.start.orig <- plots$app.start
  plots$app.end.orig <- plots$app.end

  plots$app.start <- fixDateTime(plots$app.start.orig)
  plots$app.end <- fixDateTime(plots$app.end.orig)

  # Convert incorportation time in hh:mm to decimal hours
  # NTS: convert to function
  # Assumes values given with no : are just in hours
  plots$time.incorp <- HM2DH(plots$time.incorp)

  # Fix slurry application rate where it was given as TAN application rate (only ARDC--Shabtai's data)
  plots$app.rate[plots$app.rate.unit == 'kg NH4-N/ha'] <- plots$app.rate[plots$app.rate.unit == 'kg NH4-N/ha']/plots$man.tan[plots$app.rate.unit == 'kg NH4-N/ha']
  plots$app.rate.unit[plots$app.rate.unit == 'kg NH4-N/ha'] <- 't/ha'

  # Sort out crop height for bare soil
  plots$crop.z[tolower(plots$crop) == 'bare soil'] <- 0
  plots$crop.area[tolower(plots$crop) == 'bare soil'] <- 0

  # NTS: Use checks instead
  ### Fix air.temp.z values apparently given in m not cm
  ##plots$air.temp.z[!is.na(plots$air.temp.z) && plots$air.temp.z < 3] <- plots$air.temp.z[!is.na(plots$air.temp.z) && plots$air.temp.z < 3]*100

  ## Add institute and file name
  #x <- strsplit(file, '/')
  #if(missing(institute)) {
  #  institute <- x[[1]][[length(x[[1]])-1]]
  #}
  #d$institute <- institute
  #d$file <- x[[1]][[length(x[[1]])]]

  ## Set missing tillage values to No
  ## NTS: seems to already be corrected! Not sure how.
  #d$till[is.na(d$till)] <- 'No'
  #d$till[d$till == ''] <- 'No'
  #d$till <- factor(d$till)

  # Add soil.moist where missing, based on water-filled pore space
  #d <- calcSoilMoist(d)

  # Work with emis data ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Dates and times
  emis$t.start <- fixDateTime(emis$t.start)
  emis$t.end <- fixDateTime(emis$t.end)

  # Sort out emission units
  cf <- c('kg N/ha-hr' = 1, 
          'kg N/ha/hr' = 1, 
          'kg N/ha/h' = 1, 
          'kg TAN/ha-hr' = 1, 
          'kg TAN/ha/hr' = 1, 
          'kg TAN/ha/h' = 1, 
	  'ug NH3/m2-s' = 1/1E9*14.007/17.03*1E4*3600, 
	  'ng/m2-s' = 1/1E12*1E4*3600, 
	  'ug/m2-s' = 1/1E9*1E4*3600, 
	  'mg N/m2-hr' = 1/1E6*1E4, 
          'ng NH3 m-2 s-1' = 14.007/17.031*1/1E12*1E4*3600, 
          'ug NH3/m2-s' = 14.007/17.031*1/1E9*1E4*3600, 
          'ug/m2/s' = 1/1E9*1E4*3600,
          'µg/m2/s' = 1/1E9*1E4*3600
         )

  emis$j.NH3.unit.orig <- emis$j.NH3.unit
  emis$j.NH3.orig <- emis$j.NH3
  # Use indexing to add conversion factor for flux units
  emis$j.NH3.conv.fact <- cf[emis$j.NH3.unit.orig]
  emis$j.NH3.unit <- 'kg N/ha-hr'
  emis$j.NH3 <- emis$j.NH3.orig*emis$j.NH3.conv.fact

  # Calculate dt = interval duration in hours
  if(sum(!is.na(emis$t.start) & !is.na(emis$t.end))>0) {
    emis$dt.calc <- as.numeric(emis$t.end - emis$t.start, units = 'hours') 
  } else {
    emis$dt.calc <- NA
  }

  # Convert reported dt to decimal hours
  # Note dt may have single quote in spreadsheet and be read in as character
  emis$dt <- HM2DH(as.numeric(emis$dt))

  emis$dt[is.na(emis$dt)] <- emis$dt.calc[is.na(emis$dt)]
  emis$dt.diff <- emis$dt - emis$dt.calc
  # NTS: flags?
  #emis$dt.flag <- ''
  #emis$dt.flag[emis$dt != emis$dt.calc] <- paste('reported and calculated dt do not match. Difference of', signif((d$dt - d$dt.calc)[d$dt != d$dt.calc], 2))

  # Add file
  emis$file <- file

  # Return objects, most unchanged
  obj$plots <- plots
  obj$emis <- emis
  return(obj)

}

addCharID <- function(d) {

  # Unique character plot IDs
  # First one includes measurement technique
  d$cpmid <- paste0('D:', as.numeric(factor(d$uptake)), '.I:', d$institute, '.Pr:', d$proj, '.E:', d$exper, '.F:', d$field, '.P:', d$plot, '.T:', 
                    d$treat, '.R:', d$rep, '.R2:', d$rep2, '.T:', d$app.start, '.M:', d$meas.tech, d$meas.tech.det)
  d$cpid <- paste0('D:', as.numeric(factor(d$uptake)), '.I:', d$institute, '.Pr:', d$proj, '.E:', d$exper, '.F:', d$field, '.P:', d$plot, 
                   '.R:', d$rep, '.R2:', d$rep2, '.T:', d$app.start)

  # Unique experiment IDs
  d$ceid <- paste0('D:', as.numeric(factor(d$uptake)), '.I:', d$institute, '.Pr:', d$proj, '.E:', d$exper)

  return(d)

}

calcEmis <- function(obj, na = 'impute') {

  submitter <- obj$submitter
  contrib <- obj$contrib
  exper <- obj$exper
  treat <- obj$treat
  plots <- obj$plots
  emis <- obj$emis
  pubs <- obj$pubs
  file <- obj$file

  # Applied TAN (kg N/ha)
  plots$tan.app <- plots$app.rate * plots$man.tan

  # Merges ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  plots$institute <- submitter$inst.abbrev
  # NTS WIP: inconsistent, partial switch to ALFAM(1) = 1, ALFAM2 = 2, and new = 2 + n
  plots$uptake <- 3

  # Add plot info (including application rate) to emis
  # Keep all = TRUE in order to later check for missing codes
  nn <- nrow(emis)
  emis.orig <- emis
  emis <- merge(plots, emis, by = c('proj', 'exper', 'field', 'plot', 'rep'), suffixes = c('.plot', '.int'), all = TRUE)
  emis <- emis[order(emis$row.in.file.int, emis$proj, emis$exper, emis$field, emis$plot, emis$rep, emis$interval), ] 
  if (nrow(emis) != nn) {
    for (i in c('proj', 'exper', 'field', 'plot', 'rep')) {
      print(i)
      print('plots sheet levels:')
      print(unique(plots[, i]))

      print('emission sheet levels:')
      print(unique(emis.orig[, i]))
      cat('\n')

    }

    print('plots unique combos')
    print(pu <- unique(plots[, c('proj', 'exper', 'field', 'plot', 'rep')]))
    print('emission unique combos')
    print(eu <- unique(emis.orig[, c('proj', 'exper', 'field', 'plot', 'rep')]))

    cat('Rows in emis before merge: ', nn, '\n')
    cat('Rows in emis after: ', nrow(emis), '\n')

    print('merged combos, plots first (x):')
    pu$plots <- TRUE
    eu$emis <- TRUE
    print(merge(pu, eu, all = TRUE))

    stop('Merge problem with plots and emis, probably a typo in project, experiment, etc.')
  }

  # Drop intervals with missing emission measurements
  # NTS: how to handle this?
  if (na == 'drop') {
    emis <- emis[!is.na(emis$j.NH3), ]
  }

  # Add character plot IDs for grouped calculations below
  emis <- addCharID(emis)

  # Calculate emission
  emis <- emis[order(emis$cpmid, emis$interval), ]
  for (i in unique(emis$cpmid)) {
    emis[emis$cpmid == i, 'ct'] <- cumsum(emis[emis$cpmid == i, 'dt'])
    if (na == 'impute' & any(is.na(emis[emis$cpmid == i, 'j.NH3']))) {
      emis[emis$cpmid == i, 'j.NH3'] <- imputeVars(emis[emis$cpmid == i, ], 'ct', 'j.NH3', method = 'linear')
    }
    emis[emis$cpmid == i, 'e.int'] <- emis[emis$cpmid == i, 'j.NH3'] * emis[emis$cpmid == i, 'dt']
    emis[emis$cpmid == i, 'e.cum'] <- cumsum(emis[emis$cpmid == i, 'e.int'])
  }

  # Elapsed time since application
  emis$cta <- as.numeric(difftime(emis$t.end, emis$app.start, units = 'hours'))
  emis$bta <- as.numeric(difftime(emis$t.start, emis$app.start, units = 'hours'))

  # Relative emission, fraction of applied TAN
  emis$e.rel <- emis$e.cum / emis$tan.app

  # Interpolate cumulative emission etc. for addition to plot-level data
  # All by cpmid
  pld <- data.frame(cpmid = unique(emis$cpmid))
  for (i in unique(emis$cpmid)) {
    dd <- emis[emis$cpmid == i, ]
    # First cumulative variables
    for (vv in c('e.cum', 'e.rel', 'rain')) {
      if (sum(!is.na(emis[emis$cpmid == i, vv] > 2))) {
        for (tt in c(6, 12, 24, 48, 72, 96, 168)) {
          pld[pld$cpmid == i, paste0(vv, '.', tt)] <- approx(x = emis[emis$cpmid == i, 'ct'], y =  emis[emis$cpmid == i, vv], xout = tt)$y
        }
        pld[pld$cpmid == i, paste0(vv, '.final')] <- approx(x = emis[emis$cpmid == i, 'ct'], y =  emis[emis$cpmid == i, vv], xout = max(emis[emis$cpmid == i, 'ct']))$y
      }
    }
    # And then weighted averages
    for (vv in c('air.temp', 'soil.temp', 'soil.temp.surf', 'wind', 'rad', 'rain.rate', 'rh')) {
      if (sum(!is.na(emis[emis$cpmid == i, vv])) > 2) {
        for (tt in c(6, 12, 24, 48, 72, 96, 168)) {
          pld[pld$cpmid == i, paste0(vv, '.', tt)] <- sum(emis[emis$cpmid == i & emis$ct <= tt, 'dt'] * emis[emis$cpmid == i & emis$ct <= tt, vv]) / sum(emis[emis$cpmid == i & emis$ct <= tt, 'dt']) 
        }
        pld[pld$cpmid == i, paste0(vv, '.mn')] <- sum(emis[emis$cpmid == i, 'dt'] * emis[emis$cpmid == i, vv]) / sum(emis[emis$cpmid == i & emis$ct <= tt, 'dt']) 
      }
    }
    # Add IDs needed for merge with plots
    pld[pld$cpmid == i, c('proj', 'exper', 'field', 'plot', 'rep', 'meas.tech', 'meas.tech.det', 'treat')] <- emis[emis$cpmid == i, c('proj', 'exper', 'field', 'plot', 'rep', 'meas.tech', 'meas.tech.det', 'treat')][1, ]
  }

  # Merge interpolated results with plots
  plots <- merge(plots, pld, by = c('proj', 'exper', 'field', 'plot', 'rep'))

  obj$plots <- plots
  obj$emis <- emis
  return(obj)
 
}


# Function for adding variables to an ALFAM data frame
addALFAMVars <- function(d) {


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

  ### Interpolate missing values (may be due to only different measurement frequencies)
  ### NTS sort out flags!
  ##for (i in unique(d$cpmid)) {
  ##  if (any(is.na(d[d$cpmid == i, 'j.NH3']))) {
  ##    d[d$cpmid == i, 'j.NH3'] <- imputeVars(d = d[d$cpmid == i, 'j.NH3'], 'ct', 'j.NH3')
  ##  }
  ##}

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

  # Sort
  d <- d[order(d$pmid, d$ct),]

  d$uexper <- paste(d$inst, d$proj, d$exper, sep = '.')

  ds <- ddply(d, c('database', 'institute', 'inst', 'country', 'file', 'proj', 'exper', 'exper2', 'eid', 'field', 'plot', 'pid', 'pmid'), 
	      summarise, 

              # File info
              first.row.in.file = min(row.in.file), 
	      last.row.in.file = max(row.in.file), 


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

              t.start.p = min(t.start),
              t.end.p = max(t.end),
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

              e.1 =  if(sum(!is.na(e.cum)) > 1 && max(ct) >= 1)  approx(x = c(ct), y = c(e.cum), xout = 1,  method = 'linear')$y else NA, 
              e.4 =  if(sum(!is.na(e.cum)) > 1 && max(ct) >= 4)  approx(x = c(ct), y = c(e.cum), xout = 4,  method = 'linear')$y else NA, 
              e.6 =  if(sum(!is.na(e.cum)) > 1 && max(ct) >= 6)  approx(x = c(ct), y = c(e.cum), xout = 6,  method = 'linear')$y else NA, 
              e.12 = if(sum(!is.na(e.cum)) > 1 && max(ct) >= 12) approx(x = c(ct), y = c(e.cum), xout = 12, method = 'linear')$y else NA, 
              e.24 = if(sum(!is.na(e.cum)) > 1 && max(ct) >= 24) approx(x = c(ct), y = c(e.cum), xout = 24, method = 'linear')$y else NA, 
              e.48 = if(sum(!is.na(e.cum)) > 1 && max(ct) >= 48) approx(x = c(ct), y = c(e.cum), xout = 48, method = 'linear')$y else NA, 
              e.72 = if(sum(!is.na(e.cum)) > 1 && max(ct) >= 72) approx(x = c(ct), y = c(e.cum), xout = 72, method = 'linear')$y else NA, 
              e.96 = if(sum(!is.na(e.cum)) > 1 && max(ct) >= 96) approx(x = c(ct), y = c(e.cum), xout = 96, method = 'linear')$y else NA, 
              e.final = e.cum[length(e.cum)], 

              e.rel.1 =  if(sum(!is.na(e.rel)) > 1 && max(ct) >= 1)  approx(x = c(ct), y = c(e.rel), xout = 1,  method = 'linear')$y else NA, 
              e.rel.4 =  if(sum(!is.na(e.rel)) > 1 && max(ct) >= 4)  approx(x = c(ct), y = c(e.rel), xout = 4,  method = 'linear')$y else NA, 
              e.rel.6 =  if(sum(!is.na(e.rel)) > 1 && max(ct) >= 6)  approx(x = c(ct), y = c(e.rel), xout = 6,  method = 'linear')$y else NA, 
              e.rel.12 = if(sum(!is.na(e.rel)) > 1 && max(ct) >= 12) approx(x = c(ct), y = c(e.rel), xout = 12, method = 'linear')$y else NA, 
              e.rel.24 = if(sum(!is.na(e.rel)) > 1 && max(ct) >= 24) approx(x = c(ct), y = c(e.rel), xout = 24, method = 'linear')$y else NA, 
              e.rel.48 = if(sum(!is.na(e.rel)) > 1 && max(ct) >= 48) approx(x = c(ct), y = c(e.rel), xout = 48, method = 'linear')$y else NA, 
              e.rel.72 = if(sum(!is.na(e.rel)) > 1 && max(ct) >= 72) approx(x = c(ct), y = c(e.rel), xout = 72, method = 'linear')$y else NA, 
              e.rel.96 = if(sum(!is.na(e.rel)) > 1 && max(ct) >= 96) approx(x = c(ct), y = c(e.rel), xout = 96, method = 'linear')$y else NA, 
              e.rel.final = e.rel[length(e.rel)], 

              # Notes
              notes = paste(unique(notes), collapse = ' ') #,
              #flag = flag[1]
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
# From 10d12m12.2s (or ) to 10.xxxx
DMS2DD <- function(x) {
  x <- gsub('°', 'd', x)
  x <- gsub('\'\'', 's', x)
  x <- gsub('′′', 's', x)
  x <- gsub("'", 'm', x)
  x <- gsub('′', 'm', x)
  x <- gsub('"', 's', x)
  neg <- grepl('[SsWw]$', x)
  x <- gsub('[NnSsEeWw]$', '', x)
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
  y <- (1 - 2 * neg) * y
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

# Fix a date/time vector
# Element-by-element, so mix of formats is acceptable
fixDateTime <- function(x){

  flag <- character(length(x))
  x <- as.character(x)

  # Remove extra quotes
  x <- gsub('[\"\']', '', x)

  for(i in 1:length(x)) {
    if(!is.na(x[i]) & nchar(x[i])>8) {
      x[i] <- gsub('/', '-', x[i])
      if (grepl('\\.', x[i])) flag[i] <-'decimal point'
      x[i] <- gsub('\\.', ':', x[i])
      day <- as.numeric(lapply(x[i], function(x) strsplit(x, '-')[[1]][1]))
      month <- as.numeric(lapply(x[i], function(x) strsplit(x, '-')[[1]][2]))
      year <- as.numeric(lapply(x[i], function(x) strsplit(x, '[- ]')[[1]][3]))
      tt <- as.character(lapply(x[i], function(x) strsplit(x, '[- ]')[[1]][4]))
      if(nchar(year) != 4) {
        #x[i, paste0(i, '.flag')] <- paste0(x[i, paste0(i, '.flag')], ', 2 digit year')
        if(year > 50) {
          year <- year + 1900
        } else if(year < 20) {
          year <- year + 2000
        } else {
          stop('Error in fixDateTime() with year. Code BerlYu1776.')
        }
      }  
      if(month > 12) {
        if(day > 12) {
          stop('Both month and day have values > 12 in row ', i, '. Code Aheruna1299.')
        }
        #flag[i] <- paste0(flag[i], ', month and day switched')
        dd <- day
        day <- month
        month <- dd
      }
      # Pad with leading 0s
      day <- sprintf('%02d', day)
      month <- sprintf('%02d', month)
      date.time.char <- paste0(year, '-', month, '-', day, ' ', tt)
      x[i] <- date.time.char
    } else {
      x[i] <- NA
    }
  }

  x <- as.POSIXct(x, format = '%Y-%m-%d %H:%M', tz = 'GMT')

  return(x)
  # NTS: return flags later

}


# H:M to decimal hours
HM2DH <- function(x) {
  if(all(!grepl(':', x))) {
    return(x)
  }

  for(i in 1:length(x)) {
    hr <- strsplit(x[i], ':')[[1]][1]
    mn <- strsplit(x[i], ':')[[1]][2]
    x[i] <- hr + mn/60
  }

  x <- as.numeric(x)

  return(x)
}

imputeVars <- function(d, tt, v, method = 'linear', rule = 2) {

  d[is.na(d[, v]), v] <- approx(x = d[, tt], y = d[, v], xout = d[is.na(d[, v]), tt], method = method, rule = 2)$y

  v <- d[, v]

  return(v)

}

fixWeather <- function(obj, na = 'impute') {

  emis <- obj$emis

  emis$rain[is.na(emis$rain)] <- 0
  emis$rain.rate <- emis$rain / emis$dt
  emis$rain.cum <- NA

  # Impute missing variables
  for (i in unique(emis$cpmid)) {
    for (j in c('air.temp', 'soil.temp', 'soil.temp.surf', 'rad', 'wind', 'air.pres', 'rh')) {
      if (sum(!is.na(emis[emis$cpmid == i, j])) > 2) {
        emis[emis$cpmid == i, j] <- imputeVars(emis[emis$cpmid == i, ], 'ct', j, method = 'linear')
        emis[emis$cpmid == i, 'rain.cum'] <- cumsum(emis[emis$cpmid == i, 'rain'])
      }
    }
  }

  obj$emis <- emis

  return(obj)

}


# Check for missing values in essential variables
# Missing values would cause error prior to error checking
check4missing <- function(obj) {

  # Emission sheet
  emis <- obj$emis
  for (i in c('proj', 'exper', 'field', 'plot', 'treat', 'interval', 'meas.tech')) {
    if (any(ii <- is.na(emis[, i]))) {
      cat('Error in\n')
      print('First 10 rows:')
      print(emis[ii, c('row.in.file', i)][1:min(10, length(ii)), ])
      stop('Missing values in ', i)
    }
  }

  # If dt is missing, must have t.start and t.end
  if (any(ii <- is.na(emis[, 'dt']))) {
    if (any(is.na(c(emis$t.start, emis$t.end)))) {
      cat('Error in dt\n')
      print('First 10 rows:')
      print(emis[ii, c('row.in.file', 't.start', 't.end', 'dt')][1:min(10, length(ii)), ])
      stop('Missing values in ', i)
    }
  }

  # Check for missing application time in plots
  plots <- obj$plots
  for (i in c('proj', 'exper', 'field', 'plot', 'app.start', 'app.end', 'app.method')) {
    if (any(ii <- is.na(plots[, i]))) {
      cat('Error in\n')
      print('First 10 rows:')
      print(plots[ii, c('row.in.file', i)][1:min(10, length(ii)), ])
      stop('Missing values in ', i)
    }
  }


}
