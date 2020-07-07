# Model
calcEmis<-function(dt,a0,r1,r2) {
  # t is shift length (hr)

  l<-length(dt)
  ct<-cumsum(dt)

  # Empty result vectors
  a<-u<-e<-j<-numeric(l)

  # First period
  a[1]<-a0*exp(-(r1[1] + r2[1])*dt[1])
  u[1]<-a0*(1 - exp(-r2[1]*dt[1]))
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


calcRates<-function(p,x) {
  # Intercept must be first term!
  r<-p[[1]]

  for(i in names(p)[-1]) {
    r<-r + p[[i]]*x[[i]]
  }

  return(10^r)

}

runMod<-function(p,x,g=NA) {

  which1<-grep('1',names(p))
  which2<-grep('2',names(p))
  names(p)<-gsub('[0-9]','',names(p))
  r1<-calcRates(p[which1],x)
  r2<-calcRates(p[which2],x)

  if(is.na(g)) {
    e<-calcEmis(x$dt,x$tan.app.rate[1],r1,r2)
    return(e)
  }

  y<-x
  e<-NULL
  for(i in unique(x[,g])) {
    xx<-x[x[,g]==i,]
    rr1<-r1[x[,g]==i]
    rr2<-r2[x[,g]==i]
    e<-rbind(e,cbind(g=i,calcEmis(xx$dt,xx$tan.app.rate[1],rr1,rr2)))
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


