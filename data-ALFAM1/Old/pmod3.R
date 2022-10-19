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


calcRates<-function(p,x,tr='log10') {
  # Intercept must be first term!
  r<-rep(p[[1]],nrow(x)) # Rep required incase int is the only parameter

  for(i in names(p)[-1]) {
    r<-r + p[[i]]*x[[i]]
  }

  if(tr=='log10') return(10^r)
  if(tr=='logit') return(exp(r)/(1 + exp(r)))

}

runMod<-function(p,x,g=NA) {

  which0<-grep('0$',names(p))
  which1<-grep('1$',names(p))
  which2<-grep('2$',names(p))
  if('fu0' %in% names(p)) fu0<-exp(p['fu0'])/(1 + exp(p['fu0'])) else fu0<-0
  names(p)<-gsub('[0-9]','',names(p))
  if(length(which0)>0) fu0<-calcRates(p[which0],x,tr='logit')
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


# Next two functions for fitting, for calculating residuals, A is for all observations, E runs separately by g (group)
resCalc<-function(p,x=dd,g=NA,to='j'){
  e<-runMod(p,x,g=g)
  if(to=='j') return(log10(e$j/x$j.ave))
  if(to=='e') return(x$emis.cum - e$e)
  stop('to argument must be j or e but is ',to)
}

#resCalcE<-function(p,x=d,g='pid'){
#  y<-x
#  for(i in unique(x[,g])) {
#    xx<-x[x[,g]==i,]
#    e<-runMod(p,xx)
#    y[x[,g]==i,'j']<-e$j
#  }
#  print(c(p,rss=sum(abs(log10(y$j/x$j.ave)))))
#  return(log10(y$j/x$j.ave))
#}


