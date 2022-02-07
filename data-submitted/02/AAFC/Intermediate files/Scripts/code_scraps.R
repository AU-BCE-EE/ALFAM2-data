
# Date and time
d$time<-sprintf('%04.f',d$time)
d$date.time<-as.POSIXct(paste(d$jday,2004,d$time),format='%j %Y %H%M')

# Calculate shift start and end times
d<-dat1[,c('jday','time','etime')]
d<-na.omit(d)
d$dtime<-c(0,diff(d$etime))
d$end.date.time<-as.POSIXct(paste(d$jday,d$time),format='%j %H%M')
d$start.date.time<-d$end.date.time - d$dtime*3600
# Format date.time
d$end.date.time<-as.character(d$end.date.time,format='%d-%m-%Y %H:%M')
d$start.date.time<-as.character(d$start.date.time,format='%d-%m-%Y %H:%M')
d<-d[,c('jday','time','etime','start.date.time','end.date.time')]
# Export
write.csv(d,'2005_may_dates.csv',row.names=FALSE,quote=FALSE)

# Drop missing times
dat<-subset(dat,!is.na(etime))
dat$dt<-c(0,diff(dat$

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


