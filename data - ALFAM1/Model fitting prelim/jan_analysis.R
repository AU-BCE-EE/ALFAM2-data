# Working with ALFAM1 data
# S. Hafner
# Modified: 2014 June 16

library(plyr)

# Read in data
dat<-read.csv('alfam1.csv',na.strings="nd",skip=1)
dat<-subset(dat,institute=='IMAG')
# Drop experiments with missing values
dat<-subset(dat,!experiment%in%c('1989-38','1991-16','1989-15','1990-11','1991-29','1991-30'))
dfsumm(dat)

# Log transform
dat$lwind<-log10(dat$wind + 0.01)

# Sort out some factors
dat$man.app<-factor(dat$man.app,labels=c('broad','band','trailing','open','closed'))

# Negative values
dat$j.ave[dat$j.ave<=0]<-1E-5

# TAN application and emission rates
dat$tan.app.rate<-dat$man.rate*dat$man.tan # kg TAN/ha
dat$j.rel<-dat$j.ave/dat$tan.app.rate # Fraction of applied TAN per hour

# NH3 emission in each shift
dat$emis.shift<-dat$j.ave*dat$dt

# Elapsed times and cumulative emission
dat<-ddply(dat,'experiment',transform,ct=cumsum(dt),mt=cumsum(dt) - dt/2,emis.cum=cumsum(emis.shift),m.tan.start=tan.app.rate - c(0,cumsum(emis.shift[-length(emis.shift)])),atan=tan.app.rate - cumsum(emis.shift) + emis.shift,vary.temp=sum(diff(air.temp))!=0,vary.wind=sum(diff(wind))!=0)

# Fit Bert's model
bmod<-lm(log(j.ave) ~ man.app + log(ct) + atan + tan.app.rate + wind + air.temp + man.app*wind,data=dat)

# Add predictions
dat$j.pred.b<-exp(predict(bmod))



# Summary data frame
ds<-ddply(dat,c('institute','project','experiment','plot','pid'),summarise,man.app=man.app[1],man.dm=mean(man.dm),soil.temp=mean(soil.temp),air.temp=mean(air.temp),man.ph=mean(man.ph),man.type=man.type[1])
ds$man.app<-factor(ds$man.app) # Drop unused

# Subset to work with for now
# No incoporation, varying wind and temperature
dat$incorp[is.na(dat$incorp)]<-0
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

