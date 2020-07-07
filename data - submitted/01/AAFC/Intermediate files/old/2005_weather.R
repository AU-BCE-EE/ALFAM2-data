# For calculating mean weather data for each wind tunnel measurement period
# S. Hafner
# Modified: 2014 APR 16

library(plyr)

dat<-read.table('2004_weather.txt',sep='\t',header=TRUE)

# Drop missing times
dat<-subset(dat,!is.na(time))

# Sampling times as cumulative time in hr
stimes<-c(
0.5,
1,
2,
3,
4,
6,
10.5,
19.6,
25.45,
31.55,
43.55,
49.45,
55.45,
67.65,
73.65,
79.45,
98.4,
127.17,
149.97,
171.67,
176.77,
213.14)

m<-data.frame(stime=stimes,time=NA,jday=NA,stemp=NA,atemp=NA,rad=NA,rhumid=NA,cumrad=NA)

for(i in 1:nrow(m)) {

  if(i==1) d<-subset(dat,time<=m$stime[i] & time>0) else d<-subset(dat,time<=m$stime[i] & time>m$stime[i-1])
  tm<-apply(d,2,mean)
  m[i,-1]<-tm

}

# Convert radiation to J/m2-s
m$rad<-m$rad*1000

write.csv(m,'2004_weather_means.csv',row.names=FALSE)
