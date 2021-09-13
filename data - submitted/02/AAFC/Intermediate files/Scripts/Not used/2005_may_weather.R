# Calculates mean weather conditions
# S. Hafner
# Modified: 29 August 2014

# Weather data are in two different files
# Can't remember why I used tab-delimited files. . .
dat1<-read.table('../Input/2005_may_weather_1.txt',sep='\t',header=TRUE)
dat2<-read.table('../Input/2005_may_weather_2.txt',sep='\t',header=TRUE)

# Merge
dat<-merge(dat1,dat2,by=c('jday','time'))
dat<-subset(dat,!is.na(etime))

# Convert radiation to J/m2-s
dat$rad<-dat$rad*1000

# Sampling times as cumulative time in hr
# From 'NH3-flux and cumul May 2005' worksheet in spreadsheet from Martin
stimes<-c(
0.5,
1,
2,
3,
4,
6,
8,
11.22,
20.22,
26.22,
32.22,
44.22,
50.22,
56.22,
68.22,
74.22,
80.22,
93.22,
102.27,
116.22,
144.22,
165,
188.22,
212.22,
236.22,
260.22
)

m<-data.frame(stime=stimes,jday=NA,time=NA,etime=NA,stemp=NA,rad=NA,stempo=NA,atemp=NA,rh=NA)

for(i in 1:nrow(m)) {

  if(i==1) d<-subset(dat,etime<=m$stime[i] & etime>=0) else d<-subset(dat,etime<=m$stime[i] & c(0,etime[-nrow(dat)])>=m$stime[i-1])
  # If none available, take closest one
  if(nrow(d)==0) d<-subset(dat,(abs(etime-m$stime[i]) == min(abs(etime-m$stime[i]))))
  tm<-apply(d,2,mean,na.rm=TRUE)
  tm[is.nan(tm)]<-NA
  m[i,-1]<-tm

}

write.csv(m,'../Output/2005_may_weather_means.csv',row.names=FALSE)
