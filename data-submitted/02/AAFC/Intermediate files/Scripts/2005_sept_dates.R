# Sorts out shift times/dates
# S. Hafner
# Modified: 10 July 2014

# Sampling times as cumulative time in hr
# From 'NH3-flux and cumul sept. 2005' worksheet in spreadsheet from Martin
stimes<-c(
0.5,
1,
2,
3,
4,
5.896296296,
7.896296296,
10.7212963,
19.74444444,
25.70648148,
31.75,
43.78148148,
49.76018519,
53.17685185,
68.20648148,
73.73648148,
79.73648148,
92.56648148,
103.2364815,
120.2883333,
144.0003704,
168.3864815,
192.8855556,
216.5911111,
238.2318519
)

# DON'T HAVE START DATE/TIME

dt<-diff(c(0,ct))

# Start date is from 'weather May 2005' worksheet in spreadsheet from Martin
d<-data.frame(shift=1:length(stimes),start.dt=as.POSIXct('129 2005 10:00',format='%j %Y %H:%M')+(c(0,ct[-length(ct)]))*3600,end.dt=as.POSIXct('129 2004 10:00',format='%j %Y %H:%M')+(ct)*3600)
d$start.dt<-as.character(d$start.dt,format='%d-%m-%Y %H:%M')
d$end.dt<-as.character(d$end.dt,format='%d-%m-%Y %H:%M')
write.table(d,'2005_may_times.txt',row.names=FALSE,quote=FALSE,sep='\t')


