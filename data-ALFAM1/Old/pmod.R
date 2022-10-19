par<-list(int=-1.8,temp=0.001,wind=0.001,dm=0.001,time=-0.01)
x<-subset(dd,pid==d$pid[1])
y<-pmod(par=par,t=x$t.shift,m.i=x$tan.app.rate[1],temp=x$air.temp,wind=x$wind,dm=x$man.dm)


# Model
pmod<-function(par,t,m.i,temp,wind,dm) {
  # t is shift length (hr)

  p<-par
  l<-length(t)
  t.e<-cumsum(t)

  # Empty result vectors
  j<-m<-m.s<-numeric(l)
  m.s[1]<-m.i

  # Determine r for each period
  r<-10^(p$int + p$temp*temp + p$wind*wind + p$dm*dm + p$time*t.e)

  # Loop through the periods
  for(i in 1:l) {
    m[i]<-m.s[i]*exp(-r[i]*t[i])
    j[i]<-(1-exp(-r[i]*t[i]))*m.s[i]/t[i]
    if(i<l) m.s[i+1]<-m[i]
  }

  return(data.frame(t=t,t.e=t.e,r=r,j=j,m.s=m.s,m=m))

}

