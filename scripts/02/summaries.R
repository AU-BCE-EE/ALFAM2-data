# Creates summary files for ALFAM database
# S. Hafner

d <- read.csv('../../data-output/02/ALFAM2_interval.csv')
d <- fixALFAMCSV(d)

ds <- summALFAM(d, normalize=FALSE)

# Export means used as ref in models
sink('../../logs/02/ds_means.txt')
  print(dfsumm(ds))
sink()

# Add warning for old Swiss data
ds$notes[ds$inst == 107] <-   paste('Emission error. Emission measurements are thought to be inaccurate. See ALFAM2 database paper along with Haeni et al. (2016) (Atmos. Environ. 125: 92-99).', ds$notes[ds$inst == 107], sep = ', ')

unique(ds$inst)

# Check with duplicate pmid
if(any(table(ds$pmid) > 1)) {
  stop('In make_summaries.R there are duplicate pmid!')
}

if(sum(duplicated(d[,c('inst', 'plot', 'rep', 'ct', 'man.dm', 'man.tan', 'meas.tech', 'j.NH3', 'e.rel')])) > 0) {
  stop('In make_summaries.R there are duplicate rows. See code b2Urhj14.')
}

# Select columns and round
ds <- ds[, c('inst', 'eid', 'pid', 'pmid', 
             'database', 'proj', 'exper', 'exper2', 
             'institute', 'country', 
             'file', 'first.row.in.file', 'last.row.in.file', 
             'pub.id', 'pub.info',
             'lat', 'long', 'topo', 'field', 
             'plot', 'plot.area', 'treat', 'rep', 'rep2', 
             'n.ints', 't.start.p', 't.end.p', 'dt1', 'dt.min', 'dt.max', 'ct.min', 'ct.max',
             'meas.tech', 'meas.tech2', 'meas.tech.orig', 
             'j.NH31', 'j.rel1',
             'e.1', 'e.4', 'e.6', 'e.12', 'e.24', 'e.48', 'e.72', 'e.96', 'e.final',
             'e.rel.1', 'e.rel.4', 'e.rel.6', 'e.rel.12', 'e.rel.24', 'e.rel.48', 'e.rel.72', 'e.rel.96', 'e.rel.final',
             'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.type2', 'soil.water', 'soil.moist', 'soil.ph', 'soil.dens', 'crop.res', 'till', 
             'air.temp.6', 'air.temp.12', 'air.temp.24', 'air.temp.48', 'air.temp.72', 'air.temp.mn', 
             'air.temp.z', 
             'soil.temp.6', 'soil.temp.12', 'soil.temp.24', 'soil.temp.72', 'soil.temp.48', 'soil.temp.mn', 
             'soil.temp.z', 
             'rad.6', 'rad.12', 'rad.24', 'rad.48', 'rad.72', 'rad.mn', 
             'wind.6', 'wind.12', 'wind.24', 'wind.48', 'wind.72', 'wind.mn', 
             'wind.z', 
             'wind.2m.6', 'wind.2m.12', 'wind.2m.24', 'wind.2m.48', 'wind.2m.72', 'wind.2m.mn', 
             'wind.loc', 
             'rain.1', 'rain.6', 'rain.12', 'rain.24', 'rain.48', 'rain.72', 'rain.tot', 
             'rain.rate.1', 'rain.rate.6', 'rain.rate.12', 'rain.rate.24', 'rain.rate.48', 'rain.rate.72', 'rain.rate.mn', 
             'rh.6', 'rh.12', 'rh.24', 'rh.48', 'rh.72', 'rh.mn', 
             'far.loc', 
             'man.source', 'man.source.orig', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.stor', 
             'man.dm', 'man.tkn', 'man.tan', 'acid', 'man.tic', 'man.ua', 'man.ph', 'man.freeNH3', 'man.eq.gasNH3', 
             'date.start', 'app.start', 'app.start.orig',
             'app.method', 'app.method2', 'app.method.orig', 'app.rate', 'tan.app', 
             'incorp', 'incorp.orig', 'time.incorp', 
             'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 
             'crop', 'crop.orig', 'crop.z', 'crop.area', 'lai', 
             'notes', 'flag')]

ds <- rounddf(ds, 5)

# Create database file
write.csv(ds, '../../data-output/02/ALFAM2_plot.csv', row.names = FALSE)

# And a record
sink('../../logs/02/ALFAM_summary_record.txt', append = TRUE)
  cat('Created ALFAM_plot.csv on ')
  print(Sys.time())
  cat('contains data from', length(unique(d$inst)), ' institutes\n')
  cat('and has ', nrow(ds), ' pmid\n')
  cat('and ', length(ds), ' columns\n')
  cat('and ', nrow(ds), ' rows\n')
sink()

