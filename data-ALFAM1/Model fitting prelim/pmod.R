# Model
calcEmis<-function(dt,a0,u0,r1,r2) {
  # t is shift length (hr)

  l<-length(dt)
  ct<-cumsum(dt)

  # Empty result vectors
  a<-u<-e<-j<-numeric(l)

  # First period
  a[1]<-a0*exp(-(r1[1] + r2[1])*dt[1])
  u[1]<-u0 + a0*(1 - exp(-r2[1]*dt[1]))
  e[1]<-a0*(1 - exp(-r1[1]*dt[1]))
  j[1]<-a0*(1 - exp(-r1[1]*dt[1]))/dt[1]

  # Loop through the periods
  if(l>1){
    for(i in 2:l) {
      a[i]<-a[i-1]*exp(-(r1[i] + r2[i])*dt[i])
      u[i]<-u[i-1] + a[i-1]*(1 - exp(-r2[i]*dt[i]))
      e[i]<-e[i-1] + a[i-1]*(1 - exp(-r1[i]*dt[i]))
      j[i]<-a[i-1]*(1 - exp(-r1[i]*dt[i]))/dt[i]
    }
  }

  return(data.frame(ct=ct,dt=dt,r1=r1,r2=r2,a=a,u=u,e=e,j=j))

}


# Calculate the values of a rate constant
calcRates<-function(p,x,tr='log10') {
  # Intercept must be first term!
  which.int<-grep('int',names(p))
  if(length(which.int)>1) stop('calcRates called with more than one intercept (int) term for p argument: ',p)
  r<-rep(p[[which.int]],nrow(x)) # Rep required incase int is the only parameter

  for(i in names(p)[-which.int]) {
    r<-r + p[[i]]*x[[i]]
  }

  if(tr=='log10') return(10^r)
  if(tr=='logit') return(exp(r)/(1 + exp(r)))

}

# Function for running the model
# Use g = character name of column in x to run by group
runMod<-function(p,x,g=NA) {

  which0<-grep('0$',names(p))
  which1<-grep('1$',names(p))
  which2<-grep('2$',names(p))
  names(p)<-gsub('[0-9]','',names(p))
  if(length(which0)>0) fu0<-calcRates(p[which0],x,tr='logit') else fu0<-rep(0,nrow(x))
  if(length(which1)>0) r1<-calcRates(p[which1],x) else r1<-rep(0,nrow(x))
  if(length(which2)>0) r2<-calcRates(p[which2],x) else r2<-rep(0,nrow(x))

  if(is.na(g)) {
    ff<-fu0[1]
    a0<-(1-ff)*x$tan.app.rate[1]
    u0<-ff*x$tan.app.rate[1]
    dt<-x$dt
    e<-calcEmis(dt,a0,u0,r1,r2)
    return(e)
  }

  y<-x
  e<-NULL
  for(i in unique(x[,g])) {
    xx<-x[x[,g]==i,]
    rr1<-r1[x[,g]==i]
    rr2<-r2[x[,g]==i]
    ff<-fu0[x[,g]==i][1]
    a0<-(1-ff)*xx$tan.app.rate[1]
    u0<-ff*xx$tan.app.rate[1]
    dt<-xx$dt
    e<-rbind(e,cbind(g=i,calcEmis(dt,a0,u0,rr1,rr2)))
  }
  return(e)

}


# Function for calculating residuals
resCalc<-function(p,x=dd,g=NA,to='j',fixed){
  if(!missing(fixed)) p<-c(p,fixed)
  e<-runMod(p,x,g=g)
  if(to=='j') return(log10(e$j/x$j.ave))
  if(to=='e') return(x$emis.cum - e$e)
  stop('to argument must be j or e but is ',to)
}


