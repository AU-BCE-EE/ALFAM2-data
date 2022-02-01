# Working with ALFAM1 data
# S. Hafner

library(plyr)
library(minpack.lm)
library(beanplot)
source('pmod.R')

# Read in data
dat<-read.csv('alfam1.csv',na.strings="nd",skip=1)

# Create unique id for each set of plot measurements
dat$pid<-as.factor(paste(dat$institute,dat$project,dat$experiment,dat$plot,sep="-"))

# Log transform
dat$lwind<-log10(dat$wind + 0.01)

# Sort out some factors
dat$man.app<-factor(dat$man.app,labels=c('broad','band','trailing','open','closed','pressurized'))

# Negative values
dat$j.ave[dat$j.ave<=0]<-1E-5

# TAN application and emission rates
dat$tan.app.rate<-dat$man.rate*dat$man.tan # kg TAN/ha
dat$j.rel<-dat$j.ave/dat$tan.app.rate # Fraction of applied TAN per hour

# NH3 emission in each shift
dat$emis.shift<-dat$j.ave*dat$dt

# Elapsed times and cumulative emission
dat<-ddply(dat,'pid',transform,ct=cumsum(dt),mt=cumsum(dt) - dt/2,emis.cum=cumsum(emis.shift),m.tan.start=tan.app.rate - c(0,cumsum(emis.shift[-length(emis.shift)])),m.tan.end=tan.app.rate - cumsum(emis.shift),vary.temp=sum(diff(air.temp))!=0,vary.wind=sum(diff(wind))!=0,rain.data=sum(is.na(rain))==0)

# Apparent emission rate (fraction/hr)
dat$r.apparent<- -log(dat$m.tan.end/dat$m.tan.start)/dat$dt

dat<-ddply(dat,'pid',transform,dr.apparent=c(NA,diff(log10(r.apparent))))

# Subset, broadcast only, no incorporation
dat$incorp[is.na(dat$incorp)]<-0
dat<-subset(dat,man.app=='broad' & incorp==0 & institute!='JTI')
dat$institute<-factor(dat$institute) # Drop unused

# Summary data frame
ds<-ddply(dat,c('institute','project','experiment','plot','pid'),summarise,man.app=man.app[1],man.dm=mean(man.dm),soil.temp=mean(soil.temp),air.temp=mean(air.temp),man.ph=mean(man.ph),man.type=man.type[1],dar1=dr.apparent[2])
ds$man.app<-factor(ds$man.app) # Drop unused

         #                        green
cols<-c('#FF003312','#0033FF30','#33CC0030','#FFFF0025','#FF00CC20','#FF990020','#00000015')
names(cols)<-unique(dat$institute)
pdf("allj.pdf",height=5,width=5)
  plot(j.rel ~ ct,data=dat,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1))
  logaxis(2)
  for(i in unique(dat$pid)) {
    dd<-subset(dat,pid==i)
    lines(dd$ct,dd$j.rel,lwd=1,col=cols[dd$institute[1]])
  }
  plot(j.rel ~ ct,data=dat,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1))
  logaxis(2)
  for(i in unique(dat$pid)) {
    dd<-subset(dat,pid==i)
    points(j.rel ~ ct,data=dd,pch=20,lwd=0,col=cols[dd$institute[1]])
  }
  plot(j.rel ~ ct,data=dat,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,24),ylim=c(2E-5,1))
  logaxis(2)
  for(i in unique(dat$pid)) {
    dd<-subset(dat,pid==i)
    points(j.rel ~ ct,data=dd,pch=20,lwd=0,col=cols[dd$institute[1]])
  }
dev.off()


# Apparent rate
pdf("ar.pdf",height=5,width=8)
  plot(r.apparent ~ ct,data=dat,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Apparent emission rate constant',las=1,xlim=c(0,110),ylim=c(1E-6,1))
  logaxis(2)
  for(i in unique(d$pid)) {
    dd<-subset(d,pid==i)
    lines(dd$ct,dd$j.rel,lwd=2,col="#99000022")
  }
dev.off()


# Plot decline in apparent rate
pdf("ard.pdf",height=5,width=5)
  plot(dat$ct, dat$dr.apparent,type='p',xlab='Time since application (hr)',ylab='Apparent emission rate constant',las=1,xlim=c(0,120),ylim=c(-1,1),pch=20,cex=1,lwd=0,col="#FF990020")
dev.off()

# Decline in apparent rate by institute
pdf("ardi.pdf",height=5,width=8)
  for(j in unique(dat$institute)) {
    d<-subset(dat,institute==j)
    plot(dr.apparent ~ ct,data=d,xlab='Time since application (hr)',ylab='Apparent emission rate constant',las=1,ylim=c(-1,1),pch=20,cex=1,lwd=0,col="#55000019",main=j)
    m<-loess(dr.apparent ~ ct,data=d)
    p<-predict(m,newdata=data.frame(ct=0:500))
    lines(0:500,p,col='purple',lwd=3)
  }
dev.off()




# Subset to work with for now
# No incoporation, varying wind and temperature
d<-subset(dat,vary.temp & vary.wind & incorp==0)

# For holding all model results
mods<-list()

# First model, air temperature and wind, calibrate to flux j
mods[['1j']]<-list()
# Initial parameter guesses
p<-c(int1=-2,ct1=-0.01,air.temp1=0.01,lwind1=0.1,int2=-0.5,ct2=-0.01)
j<-0
for(i in unique(d$pid)) {
  mods[['1j']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['1j']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='j'))
  mods[['1j']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 1e, calibrate to emission
mods[['1e']]<-list()
# Initial parameter guesses
p<-c(int1=-2,ct1=-0.01,air.temp1=0.01,lwind1=0.1,int2=-3,ct2=-0.01)
j<-0
for(i in unique(d$pid)) {
  mods[['1e']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['1e']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='e'))
  mods[['1e']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 2j, initial fraction in u, no ct2, calibrate to flux 
mods[['2j']]<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2,ct1=-0.01,air.temp1=0.01,lwind1=0.1)
j<-0
for(i in unique(d$pid)) {
  mods[['2j']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['2j']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='j'))
  mods[['2j']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 2e, initial fraction in u, no ct2, calibrate to emission
mods[['2e']]<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2,ct1=-0.01,air.temp1=0.01,lwind1=0.1)
j<-0
for(i in unique(d$pid)) {
  mods[['2e']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['2e']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='e'))
  mods[['2e']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 3j, initial fraction in u, no ct2, no ct1, calibrate to flux 
mods[['3j']]<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2,air.temp1=0.01,lwind1=0.1)
j<-0
for(i in unique(d$pid)) {
  mods[['3j']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['3j']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='j'))
  mods[['3j']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 3e, initial fraction in u, no ct2, no ct1, calibrate to emission
mods[['3e']]<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2,air.temp1=0.01,lwind1=0.1)
j<-0
for(i in unique(d$pid)) {
  mods[['3e']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['3e']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='e'))
  mods[['3e']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 4j, simplest models, 2 parameters
mods[['4j']]<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2)
j<-0
for(i in unique(d$pid)) {
  mods[['4j']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['4j']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='j'))
  mods[['4j']][[i]][['pred']]<-runMod(coef(m),dd)
}

# 4e, simplest models, 2 parameters
mods[['4e']]<-list()
# Initial parameter guesses
p<-c(int0=-2,int1=-2)
j<-0
for(i in unique(d$pid)) {
  mods[['4e']][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[['4e']][[i]][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dd,to='e'))
  mods[['4e']][[i]][['pred']]<-runMod(coef(m),dd)
}


# Get coefficients and predictions
preds<-coefs<-list()
for(i in names(mods)) {
  coefs[[i]]<-ldply(mods[[i]],function(x) coef(x[['nls']]),.id='pid')
  preds[[i]]<-ldply(mods[[i]],function(x) x[['pred']],.id='pid')
  coefs[[i]]<-na.omit(coefs[[i]])
  preds[[i]]<-na.omit(preds[[i]])
  coefs[[i]]<-coefs[[i]][coefs[[i]]$int1!=-2,]
  preds[[i]]<-preds[[i]][coefs[[i]]$int1!=-2,]
  cs<-coefs[[i]]
  names(cs)[-1]<-paste0(names(cs),'.',i)[-1]
  ds<-merge(ds,cs,by='pid')
}

# Get median paramters
pm<-llply(coefs,function(x) apply(x[,-1],2,median))

db<-subset(d,man.app=='broad')
preds[['3em']]<-runMod(pm[['3e']],db,g='pid')
names(preds[['3em']])[1]<-'pid'

# Fit to all broadcast data at once
omods<-opreds<-list()
p<-c(int0=-0.88,int1=-2.3,ct1=-0.011,air.temp1=0.047,lwind1=0.93)
omods[['1j']][['nls']]<-m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=db,g='pid'))
opreds[['1j']]<-runMod(coef(m),db,g='pid')
p1j<-coef(m)

omods[['1e']][['nls']]<-m<-nls.lm(par=p1j,fn=function(par) resCalc(p=par,x=db,g='pid',to='e'))
opreds[['1e']]<-runMod(coef(m),db,g='pid')
p1e<-coef(m)


save.image()

