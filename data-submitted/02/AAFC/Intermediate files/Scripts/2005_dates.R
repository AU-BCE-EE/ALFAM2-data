# Sorts out shift times/dates
# S. Hafner
# Modified: 09 July 2014

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

dt<-diff(c(0,ct))

# Start date is from 'weather May 2005' worksheet in spreadsheet from Martin
d<-data.frame(shift=1:length(stimes),start.dt=as.POSIXct('129 2005 10:00',format='%j %Y %H:%M')+(c(0,ct[-length(ct)]))*3600,end.dt=as.POSIXct('129 2004 10:00',format='%j %Y %H:%M')+(ct)*3600)
d$start.dt<-as.character(d$start.dt,format='%d-%m-%Y %H:%M')
d$end.dt<-as.character(d$end.dt,format='%d-%m-%Y %H:%M')
write.table(d,'2005_may_times.txt',row.names=FALSE,quote=FALSE,sep='\t')


