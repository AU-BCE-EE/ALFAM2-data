# Working with ALFAM1 data
# S. Hafner
# Modified: 2014 June 16

library(plyr)
library(minpack.lm)
source('pmod.R')

# Read in data
dat<-read.csv('alfam1.csv',na.strings="nd",skip=1)
dat$man.app<-factor(dat$man.app,labels=c('broad','band','trailing','open','closed','pressurized'))
dat$pid<-paste(dat$institute,dat$experiment,dat$plot,sep='-')
dat<-subset(dat,institute=='IMAG'& man.app=='broad')
dat<-subset(dat,!pid%in%unique(dat$pid[is.na(dat$wind)]) & !pid%in%unique(dat$pid[is.na(dat$air.temp)]))
dfsumm(dat)

# Log transform
dat$lwind<-log10(dat$wind + 0.01)

# Sort out some factors

# Negative values
dat$j.ave[dat$j.ave<=0]<-1E-5

# TAN application and emission rates
dat$tan.app.rate<-dat$man.rate*dat$man.tan # kg TAN/ha
dat$j.rel<-dat$j.ave/dat$tan.app.rate # Fraction of applied TAN per hour

# NH3 emission in each shift
dat$emis.shift<-dat$j.ave*dat$dt

# Elapsed times and cumulative emission
dat<-ddply(dat,'pid',transform,ct=cumsum(dt),mt=cumsum(dt) - dt/2,emis.cum=cumsum(emis.shift),m.tan.start=tan.app.rate - c(0,cumsum(emis.shift[-length(emis.shift)])),atan=tan.app.rate - cumsum(emis.shift) + emis.shift,vary.temp=sum(diff(air.temp))!=0,vary.wind=sum(diff(wind))!=0)

# Fit Bert's model
#bmod<-lm(log(j.ave) ~ man.app + log(ct) + atan + tan.app.rate + wind + air.temp + man.app*wind,data=dat)
bm<-lm(log(j.ave) ~ log(ct) + atan + tan.app.rate + wind + air.temp,data=dat)

# Add predictions
dat$j.pred.b<-exp(predict(bm))
dat<-ddply(dat,'pid',transform,e.pred.b=cumsum(j.pred.b*dt))

# Fit pmod to all data
p<-c(int0=-2,int1=-2,air.temp1=0.01,lwind1=0.1)
p<-c(int0=-2,int1=-5,atan1=0.5,air.temp1=0.01,lwind1=0.1)
p<-c(int0=-2,int1=-2,ct1=-0.1,air.temp1=0.01,lwind1=0.1)
p<-c(int1=-2,ct1=-0.1,air.temp1=0.01,lwind1=0.1)
p<-c(int1=-2,ct1=-0.1,air.temp1=0.01,lwind1=0.1)
p<-c(int1=-2,air.temp1=0.01,lwind1=0.1,int2=-2)
pm<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dat,g='pid',to='j'))
pc<-coef(pm)
preds<-runMod(p=pc,x=dat,g='pid')
dat$j.pred.p<-preds$j
dat$e.pred.p<-preds$e
# Fits suck

mods<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2,air.temp1=0.01,lwind1=0.1)
j<-0
for(i in unique(dat$pid)) {
  mods[[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(dat,pid==i) 
  mods[[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='j'))
  mods[[i]][['pred']]<-runMod(coef(m),dd)
}
preds<-ldply(mods,function(x) x[['pred']],.id='pid')


pdf("bert_comp.pdf",height=11,width=8.5)
  par(mfrow=c(3,2))
  for(i in unique(dat$pid)) {
    dd<-subset(dat,pid==i)
    mm<-subset(preds,g==i)

    # Flux plot
    plot(j.ave ~ ct,data=dd,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Emission rate (kg N/ha-hr)',las=1,main=dd$pid[1],ylim=range(c(dd$j.ave,dd$j.pred.b,dd$j.pred.p)))
    logaxis(2)
    points(j.ave ~ ct,data=dd,col='blue',cex=2.5,lwd=1.5)
    lines(j.pred.b ~ ct,data=dd,col='red',type='l',lwd=1.5)
    lines(j.pred.p ~ ct,data=dd,col='blue',type='l',lwd=1.5)
    lines(j ~ ct,data=mm,col='purple',type='l',lwd=1.5)

    # Cumulative emission plot
    plot(emis.cum ~ ct,data=dd,type='n',xlab='Time since application (hr)',ylab='Cumulative emission (kg N/ha-hr)',las=1,main=dd$pid[1],ylim=c(0,max(c(dd$emis.cum,dd$e.pred.b,dd$e.pred.p))))
    abline(h=dd$tan.app.rate[1],lty=2)
    points(emis.cum ~ ct,data=dd,col='blue',pch=1,cex=2.5,lwd=1.5)
    lines(e.pred.b ~ ct,data=dd,col='red',type='l',lwd=1.5)
    lines(e.pred.p ~ ct,data=dd,col='blue',type='l',lwd=1.5)
    lines(e ~ ct,data=mm,col='purple',type='l',lwd=1.5)

  }
dev.off()



