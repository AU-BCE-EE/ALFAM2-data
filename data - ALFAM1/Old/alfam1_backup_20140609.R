# Working with ALFAM1 data
# S. Hafner
# Modified: 2014 June 05

library(plyr)
library(minpack.lm)
library(beanplot)
source('pmod2.R')

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
dat<-ddply(dat,'pid',transform,ct=cumsum(dt),mt=cumsum(dt) - dt/2,emis.cum=cumsum(emis.shift),m.tan.start=tan.app.rate - c(0,cumsum(emis.shift[-length(emis.shift)])),m.tan.end=tan.app.rate - cumsum(emis.shift),vary.temp=sum(diff(air.temp))!=0,vary.wind=sum(diff(wind))!=0)

# Apparent emission rate (fraction/hr)
dat$r.apparent<- -log(dat$m.tan.end/dat$m.tan.start)/dat$dt

# Summary data frame
ds<-ddply(dat,c('institute','project','experiment','plot','pid'),summarise,man.app=man.app[1],man.dm=mean(man.dm),soil.temp=mean(soil.temp),air.temp=mean(air.temp),man.ph=mean(man.ph),man.type=man.type[1])
ds$man.app<-factor(ds$man.app) # Drop unused

# Subset to work with for now
d<-subset(dat,vary.temp & vary.wind)

# For holding all model results
mods<-list()

# First model
mods[[1]]<-list()
# Initial parameter guesses
p<-c(int1=-2,ct1=-0.01,air.temp1=0.001,int2=-2,ct2=-0.01)
j<-0
for(i in unique(d$pid)) {
  mods[[1]][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[[1]][[i]][['nls']]<-m<-nls.lm(par=p,fn=resCalc)
  mods[[1]][[i]][['pred']]<-runMod(coef(m),dd)
}

coef1<-ldply(mods[[1]],function(x) coef(x[['nls']]),.id='pid')
pred1<-ldply(mods[[1]],function(x) x[['pred']],.id='pid')

# Second model, include wind
mods[[2]]<-list()
# Initial parameter guesses
p<-c(int1=-2,ct1=-0.01,air.temp1=0.001,wind1=0.001,int2=-2,ct2=-0.01)
j<-0
for(i in unique(d$pid)) {
  mods[[2]][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[[2]][[i]][['nls']]<-m<-nls.lm(par=p,fn=resCalc)
  mods[[2]][[i]][['pred']]<-runMod(coef(m),dd)
}

coef2<-ldply(mods[[2]],function(x) coef(x[['nls']]),.id='pid')
pred2<-ldply(mods[[2]],function(x) x[['pred']],.id='pid')

# Third model, log wind
mods[[3]]<-list()
# Initial parameter guesses
p<-c(int1=-2,ct1=-0.01,air.temp1=0.001,lwind1=0.001,int2=-2,ct2=-0.01)
j<-0
for(i in unique(d$pid)) {
  mods[[3]][[i]]<-list()
  cat(j<-j+1,' ',i,', ',sep='')
  dd<-subset(d,pid==i) 
  mods[[3]][[i]][['nls']]<-m<-nls.lm(par=p,fn=resCalc)
  mods[[3]][[i]][['pred']]<-runMod(coef(m),dd)
}

coef3<-ldply(mods[[3]],function(x) coef(x[['nls']]),.id='pid')
pred3<-ldply(mods[[3]],function(x) x[['pred']],.id='pid')


# Drop pid that didn't calibrate
# Need to figure out why. . .
coef1<-subset(coef1,int1!=-2)
coef2<-subset(coef2,int1!=-2)
coef3<-subset(coef3,int1!=-2)

# Add parameter estimates to summary
names(coef1)[-1]<-paste0(names(coef1),'.1')[-1]
names(coef2)[-1]<-paste0(names(coef2),'.2')[-1]
names(coef3)[-1]<-paste0(names(coef3),'.3')[-1]
ds<-merge(ds,coef1)
ds<-merge(ds,coef2)
ds<-merge(ds,coef3)

# Get median parameter values from mod2 and mod3
dsb<-subset(ds,man.app=='broad')
p2m<-apply(dsb[,17:22],2,median)
names(p2m)<-gsub('\\.2','',names(p2m))
pred2m<-runMod(p=p2m,x=d,g='pid')
p3m<-apply(dsb[,23:28],2,median)
names(p3m)<-gsub('\\.3','',names(p3m))
pred3m<-runMod(p=p3m,x=d,g='pid')


# Use model 3 median parmeters as start for calibration to all broadcast trials
db<-subset(d,man.app=='broad')
mods[[11]]<-list()
mods[[11]][['nls']]<-m<-nls.lm(par=p3m,fn=function(par) resCalc(p=par,x=db,g='pid'),control=nls.lm.control(maxiter=100))
coef11<-coef(mods[[11]][['nls']])
pred11<-runMod(coef11,db,g='pid')

# Repeat, but use emission to min
mods[[12]]<-list()
mods[[12]][['nls']]<-m<-nls.lm(par=coef11,fn=function(par) resCalc(p=par,x=db,g='pid',to='e'),control=nls.lm.control(maxiter=100))
coef12<-coef(mods[[12]][['nls']])
pred12<-runMod(coef12,db,g='pid')


# Make plots
source('plots.R')

save.image()

