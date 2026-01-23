# Fix MF date problem

## To find names to sort out:
#names(idat)[grepl('POS', lapply(idat, class))]
#names(pdat)[grepl('POS', lapply(pdat, class))]

for(i in c('app.start', 't.start', 't.end')) {
  idat.old[, i] <- as.POSIXct(idat.old[, i], format = '%Y-%m-%d %H:%M', tz = 'GMT')
}

for(i in c('app.start', 't.start.p', 't.end.p')) {
  pdat.old[, i] <- as.POSIXct(pdat.old[, i], format = '%Y-%m-%d %H:%M', tz = 'GMT')
}


