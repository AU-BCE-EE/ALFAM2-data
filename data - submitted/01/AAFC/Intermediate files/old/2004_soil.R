# To align soil data measured on different days with emission measurement periods
# S. Hafner
# Modified: 2014 APR 16

# PROBLEM HERE IS THAT WE DON'T HAVE INITIAL MEASUREMENTS, AND FOR 2004, DO NOT HAVE CONTROL PLOTS

library(plyr)

soil<-read.table('2004_soil.txt',sep='\t',header=TRUE,as.is=TRUE)
shifts<-read.table('shift_times.txt',sep='\t',header=TRUE,as.is=TRUE)

# Mean shift times
shifts$start<-as.POSIXct(shifts$start,format='%d-%m-%Y %H:%M')
shifts$end<-as.POSIXct(shifts$end,format='%d-%m-%Y %H:%M')
shifts$mid<-shifts$start + (shifts$end - shifts$start)/2
shifts$mid.date<-as.character(shifts$mid,format='%d-%m-%Y')

# Sort out plots
soil$plot<-as.numeric(gsub('[ab]','',soil$plot.depth))
soil$depth<-gsub('[0-9]','',soil$plot.depth)

# Fix treatment names
trts<-data.frame(trt=c("Brut","DigÃ©rÃ©","FloculÃ©","FiltrÃ©","DÃ©cantÃ©"),t2=c('untreated','digested','digested + floculated','filtered','decanted'))
soil<-merge(soil,trts,by='trt')
soil$t2<-factor(soil$t2,levels=c('untreated','decanted','digested','filtered','digested + floculated'))

# Assign replicate numbers
rnum<-expand.grid(t2=unique(soil$t2),rep=1:3)
rnum$plot<-NA
for(i in unique(soil$t2)) {
  pnum<-unique(subset(soil,t2==i)$plot)
  rnum[rnum$t2==i,'plot']<-sort(pnum)
}

# New data frame with all sampling times for all treatments and replicates
d<-expand.grid(date=shifts$mid.date,t2=unique(soil$t2),rep=1:3)
d<-d[order(d$t2,d$rep,d$date),]

# Add plot numbers
d<-merge(d,rnum,by=c('t2','rep'))

# Drop deep samples
soil<-soil[soil$depth=='a',c('date','plot','t2','water','ph')]

dd<-merge(d,soil,by=c('date','t2','plot'),all.x=TRUE)
dd<-dd[order(dd$t2,dd$rep,dd$date),]
dd$water<-dd$water/100

write.csv(dd,'2004_soil.csv',row.names=FALSE)

