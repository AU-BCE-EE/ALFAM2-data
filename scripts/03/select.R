# Select and order columns (and order rows)

pdat.comb <- pdat.comb[order(pdat.comb$pmid), 
  c('inst', 'eid', 'pid', 'pmid', 
    'sub.period', 
    'corr.period', 
    'proj', 'exper', 'exper2', 
    'institute', 'country', 
    'submitter', 
    #'submitter', 'contribs',
    'file',
    'first.row.in.file.int', 'last.row.in.file.int', 
    'row.in.file.plot', 
    'pub.id', 'pub.info',
    'lat', 'long', 'topo', 'field', 
    'plot', 'plot.area', 'treat', 'rep', 'rep2', 
    'n.ints', 't.start.p', 't.end.p', 'dt1', 'dt.min', 'dt.max', 'ct.min', 'ct.max',
    'meas.tech', 'meas.tech2', 'meas.tech.orig', 'meas.tech.det', 
    'j.NH31', 'j.rel1',
    'e.1', 'e.4', 'e.6', 'e.12', 'e.24', 'e.48', 'e.72', 'e.96', 'e.168', 'e.final',
    'e.cum.1', 'e.cum.4', 'e.cum.6', 'e.cum.12', 'e.cum.24', 'e.cum.48', 'e.cum.72', 'e.cum.96', 'e.cum.168', 'e.cum.final',
    'e.rel.1', 'e.rel.4', 'e.rel.6', 'e.rel.12', 'e.rel.24', 'e.rel.48', 'e.rel.72', 'e.rel.96', 'e.rel.168', 'e.rel.final',
    'clay', 'silt', 'sand', 'oc', 'soil.type', 'soil.type2', 'soil.water', 'soil.water.v', 'soil.moist', 'soil.ph', 'soil.dens', 'crop.res', 'till', 
    'air.temp.1', 'air.temp.4', 'air.temp.6', 'air.temp.12', 'air.temp.24', 'air.temp.48', 'air.temp.72', 'air.temp.96', 'air.temp.168', 'air.temp.mn', 
    'air.temp.z', 
    'soil.temp.1', 'soil.temp.4', 'soil.temp.6', 'soil.temp.12', 'soil.temp.24', 'soil.temp.48', 'soil.temp.72', 'soil.temp.96', 'soil.temp.168', 'soil.temp.mn', 
    'soil.temp.surf.1', 'soil.temp.surf.4', 'soil.temp.surf.6', 'soil.temp.surf.12', 'soil.temp.surf.24', 'soil.temp.surf.48', 'soil.temp.surf.72', 'soil.temp.surf.96', 'soil.temp.surf.168', 'soil.temp.surf.mn', 
    'soil.temp.z', 
    'rad.1', 'rad.4', 'rad.6', 'rad.12', 'rad.24', 'rad.48', 'rad.72', 'rad.96', 'rad.168', 'rad.mn', 
    'wind.1', 'wind.4', 'wind.6', 'wind.12', 'wind.24', 'wind.48', 'wind.72', 'wind.96', 'wind.168', 'wind.mn', 
    'wind.z', 
    'wind.2m.1', 'wind.2m.4', 'wind.2m.6', 'wind.2m.12', 'wind.2m.24', 'wind.2m.48', 'wind.2m.72', 'wind.2m.96', 'wind.2m.168', 'wind.2m.mn', 
    'wind.loc', 
    'rain.1', 'rain.4', 'rain.6', 'rain.12', 'rain.24', 'rain.48', 'rain.72', 'rain.96', 'rain.168', 'rain.tot', 
    'rain.rate.1', 'rain.rate.4', 'rain.rate.6', 'rain.rate.12', 'rain.rate.24', 'rain.rate.48', 'rain.rate.72', 'rain.rate.96', 'rain.rate.168', 'rain.rate.mn', 
    'rh.1', 'rh.4', 'rh.6', 'rh.12', 'rh.24', 'rh.48', 'rh.72', 'rh.96', 'rh.168', 'rh.mn', 
    'far.loc', 
    'man.source', 'man.source.orig', 'man.source.det', 'man.bed', 'man.con', 'man.trt1', 'man.trt2', 'man.trt3', 'man.stor', 
    'man.dm', 'man.vs', 'man.tkn', 'man.tan', 'man.vfa', 'man.tic', 'man.ua', 'man.ph', 
    'acid',
    'date.start', 'app.start', 'app.start.orig', 'app.end', 'app.end.orig',
    'app.method', 'app.method.orig', 'app.rate', 'tan.app', 
    'incorp', 'incorp.orig', 'time.incorp', 
    'man.area', 'dist.inj', 'furrow.z', 'furrow.w', 
    'crop', 'crop.orig', 'crop.z', 'crop.area', 'lai', 
    'notes.plot', 'flag.plot')]

# Round
pdat.comb <- rounddf(pdat.comb, 5, func = signif)

# Order and select columns for database distribution
# Note that objective is to keep file size small, so most columns in plot-level data frame are excluded
idat.comb <- idat.comb[order(idat.comb$pmid, idat.comb$int), 
  c('pid', 'pmid', 'oid', 
    'row.in.file.int', 
    'interval', 't.start', 't.end', 't.start.orig', 't.end.orig', 'dt', 'dt.calc', 'dt.diff', 'ct', 'mt', 'cta', 'bta', 
    'bg.dl', 'bg.val', 'bg.unit', 
    'MOL', 'ustar', 'rl', 'air.pres', 'air.pres.unit',
    'j.NH3', 'j.rel', 
    'e.int', 'e.cum', 'e.rel', 
    'air.temp',
    'soil.temp', 
    'soil.temp.surf', 
    'pH.surf', 
    'rad', 'wind', 'wind.2m', 
    'soil.temp.z.int', 'air.temp.z.int', 'wind.z.int', 'wind.loc.int', 'far.loc.int', 
    'rain', 'rain.rate', 'rain.cum', 
    'rh', 
    'notes.int', 'flag.int')]

# Round 
idat.comb <- rounddf(idat.comb, 5, func = signif)


