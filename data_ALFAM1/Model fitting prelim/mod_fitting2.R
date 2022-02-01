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
dat<-subset(dat,man.app=='broad' & incorp==0 & vary.temp & vary.wind)
dat$institute<-factor(dat$institute) # Drop unused

# Summary data frame
ds<-ddply(dat,c('institute','project','experiment','plot','pid'),summarise,man.app=man.app[1],man.dm=mean(man.dm),soil.temp=mean(soil.temp),air.temp=mean(air.temp),man.ph=mean(man.ph),man.type=man.type[1],dar1=dr.apparent[2])
d1<-subset(dat,shift==1)
ds$man.app<-factor(ds$man.app) # Drop unused

# 
m<-lm(log10(r.apparent) ~ log10(wind) + air.temp + ct + man.dm + wind.z + man.ph + institute,data=d1)
m<-lm(log10(r.apparent) ~ log10(wind) + air.temp + man.dm + wind.z + man.ph + institute,data=d1)
summary(m)
m<-lm(log10(r.apparent) ~ log10(wind) + air.temp + institute,data=d1)
m<-lm(log10(r.apparent) ~ log10(wind) + air.temp,data=d1)
summary(m)

p<-c(int2=-2,ct1=-0.01)
p<-c(ct1=-0.01)
fixed<-c(int1=-2.9437,lwind1=0.3128,air.temp1=0.02647)
fixed<-c(int1=-1.5986,lwind1=0.08315,air.temp1=0.03424)
fixed<-c(int1=-1.6,lwind1=0.3128,air.temp1=0.02647)
m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=dat,g='pid',fixed=fixed))
p.est<-c(coef(m),fixed)
preds<-list()
preds[['1j.all']]<-runMod(p.est,dat,g='pid')
names(preds[['1j.all']])[1]<-'pid'

source('mod_plots.R')

d.iger<-subset(dat,institute=='IGER')
p<-c(ct1=-0.01,man.dm1=0.1)
fixed<-c(int1=-2.9537+1.3286,lwind1=0.3128,air.temp1=0.02647)
m<-nls.lm(par=p,fn=function(par) resCalc(p=par,x=d.iger,g='pid',fixed=fixed))
p.est<-c(coef(m),fixed)
preds<-list()
preds[['1j.all']]<-runMod(p.est,dat,g='pid')
names(preds[['1j.all']])[1]<-'pid'

source('mod_plots.R')


