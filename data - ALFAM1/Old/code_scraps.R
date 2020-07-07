#d$resid<-d$j.pred - d$j.ave
#d$lresid<-log10(d$j.pred/d$j.ave)
#
#pairs(d[1:540,c('soil.temp','air.temp','man.dm','resid')])
#pairs(dsum[,c(2:4,10:14)])
#
#mod<-lm(int1 ~ air.temp + wind + man.dm,data=dsum)
#mod<-lm(ct1 ~ air.temp + wind + man.dm,data=dsum)
#mod<-lm(int2 ~ air.temp + wind + man.dm,data=dsum)
#mod<-lm(ct2 ~ air.temp + wind + man.dm,data=dsum)
#
## Next try to calibrate to all at once
## Subsample
#ps<-sample(unique(d$pid),30)
#d<-subset(d,pid%in%ps)
## Initial parameter guesses
## int MUST BE FIRST IN EQCH SEQ
#p<-c(int1=-2,ct1=-0.01,man.dm1=-0.01,wind1=0.01,int2=-2,man.dm2=0.01,ct2=-0.01)
#p<-c(int1=-1.4,ct1=-0.0040,int2=-0.52,ct2=-0.048)
#p<-c(int1=-1.4,ct1=-0.0040,wind1=0.001,man.dm1=-0.001,temp.air=0.001,int2=-0.52,ct2=-0.048)
#
#resCalc<-function(p,x=d,g='pid'){
#  y<-x
#  for(i in unique(x[,g])) {
#    xx<-x[x[,g]==i,]
#    e<-runMod(p,xx)
#    y[x[,g]==i,'j']<-e$j
#  }
#  print(c(p,rss=sum(abs(log10(y$j/x$j.ave)))))
#  return(log10(y$j/x$j.ave))
#}
#
#m<-nls.lm(par=p,fn=resCalc)
#
#
#
#
## Example run
#x<-dd[1:7,]
#p<-c(int1=-2,dt1=-0.01,
#     int2=-2,dt2=-0.01)
#
### Doesn't work
##m<-nls(j.ave ~ runMod(p=list(p1=c(int=int1,dt=dt1),p2=c(int=int2,dt=dt2)),x)[['j']],data=x,start=c(int1=-3,dt1=-0.01,int2=-2,dt2=-0.01))
##
## nls.lm
#resCalc<-function(p,x=dd){
#  e<-runMod(p,x)
#  return(log10(e$j/x$j.ave))
#}
#
#resCalc(p,x)
#m<-nls.lm(par=p,fn=resCalc)
#
#plm<-coef(m)
#resCalc(plm)
#runMod(plm,x)
#
#p<-list(int1=-2.0,temp1=0.001,wind1=0.001,time1=-0.01,
#        int2=-2.0,temp2=0.001,wind2=0.001,time2=-0.01)
#rates<-calcRates(p,
#pmod(p=p,dt=x$dt,a0=x$tan.app.rate[1],temp=x$air.temp,wind=x$wind)
#
#residCalc<-function(par) {
#  m<-pmod(par,dt=x$dt,a0=x$tan.app.rate[1],temp=x$air.temp,wind=x$wind,dm=x$man.dm)
#  return(x$j.ave - m$j)
#}
#
#source('pmod2.R')
#m<-nls.lm(par=p,fn=rcalc)
#
#
#
#par<-list(int=-1.8,temp=0.001,wind=0.001,dm=0.001,time=-0.01)
#pdf("all_emis.pdf",height=5,width=5)
#  plot(d$t.e, d$j.rel,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1))
#  logaxis(2)
#  for(i in unique(d$pid)) {
#    dd<-subset(d,pid==i)
#    lines(dd$t.e,dd$j.rel,lwd=3,col="#33004508")
#  }
#dev.off()
#
#pdf("all_emis.pdf",height=5,width=5)
#  plot(d$ct, d$j.rel,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1),bg='blue')
#  rect(par("usr")[1], 10^par("usr")[3], par("usr")[2], 10^par("usr")[4],col="blue")
#  box()
#  logaxis(2)
#  for(i in unique(d$pid)) {
#    dd<-subset(d,pid==i)
#    lines(dd$ct,dd$j.rel,lwd=3,col="#FFFFFF09")
#  }
#dev.off()
#
#pdf("all_r.pdf",height=5,width=5)
#  plot(d$t.e, d$r.apparent,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1),bg='blue')
#  rect(par("usr")[1], 10^par("usr")[3], par("usr")[2], 10^par("usr")[4],col="blue")
#  box()
#  logaxis(2)
#  for(i in unique(d$pid)) {
#    dd<-subset(d,pid==i)
#    lines(dd$t.e,dd$r.apparent,lwd=3,col="#FFFFFF09")
#  }
#dev.off()
#
#
#
#
#
#for(i in x$ShiftNo) {
#
#  dd<-subset(x,i==ShiftNo)
#  r<-calcR(
#  
#
#}
#
#
#pdf("emis.pdf",height=11,width=8.5)
#par(mfrow=c(4,2))
#for(i in unique(d$PID)) {
#  dd<-subset(d,PID==i)
#  if(!is.na(dd$VolatilRel[1]) && dd$VolatilRel>0) plot(VolatilRel ~ ETime,log="y",data=dd,type="o")
#
#}
#dev.off()
#
#

## Subset to work with for now
#d<-subset(d,man.app==0) # Broadcast spread only
#d<-d[,c('institute','project','experiment','plot','pid','shift','dt','ct','mt','soil.type','soil.moist','air.temp','soil.temp','wind','man.type','man.dm','man.tan','man.app','man.rate','man.ph','incorp','t.incorp','crop','crop.z','j.ave','j.rel','tan.app.rate')]


