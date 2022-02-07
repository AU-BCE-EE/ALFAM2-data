# For calculating cumulative precipitation for each wind tunnel measurement period
# S. Hafner
# Modified: 22 Septemeber 2014 

library(plyr)

# Read in data
pdat<-read.csv('../Input/2004-2005_precip.csv')
sdat<-read.csv('../Input/2004-2005_shift_times.csv')
#sdat<-subset(shifts,experiment=='may 2004')

# Date conversions
sdat$t.start<-as.POSIXct(sdat$t.start,format='%d-%m-%Y %H:%M')
sdat$t.end<-as.POSIXct(sdat$t.end,format='%d-%m-%Y %H:%M')
sdat$year<-as.numeric(as.character(sdat$t.start,format='%Y'))
sdat$doy.start<-as.numeric(as.character(sdat$t.start,format='%j'))
pdat$t.end<-as.POSIXct(paste(pdat$doy,pdat$year,sprintf('%04d',pdat$time)),format='%j %Y %H%M')
pdat$t.start<-c(pdat$t.end[1],pdat$t.end[-nrow(pdat)])
pdat$doy.end<-as.numeric(as.character(pdat$t.end,format='%j'))
pdat$doy.start<-as.numeric(as.character(pdat$t.start,format='%j'))

sdat$precip<-0

# This looks takes all precip in the previous day, sums it, and places it in first shift of the day
# All other shifts that started that day will have zero precip
# Technically the water was added at the end of the shift at the beginning of the day, but the acid trap solution was changed just after, so it seems best to put it in the next shift
# Precipitation reported at 0:00 fell the previous day
for(i in 2004:2005) {
  pd<-subset(pdat,year==i)
  sd<-subset(sdat,year==i)
  for(j in unique(sd$doy.start)[-1]) {
    pdd<-subset(pd,(doy.end==j-1 & doy.start==j-1) | (doy.end==j & time==0))
    pcum<-sum(pdd$precip)
    sdd<-subset(sd,doy.start==j)
    if(nrow(sdd)>0) sdat$precip[sdat$t.start==min(sdd$t.start) & sdat$year==i]<-pcum
  }
}

# To be safe
sdat<-sdat[order(sdat$year,sdat$t.start),]

write.csv(sdat,'../Output/2004-2005_precip_sums.csv',row.names=FALSE)
