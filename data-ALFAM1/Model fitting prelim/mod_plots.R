# For making model fit plots

pdf("emod.pdf",height=11,width=8.5)
  par(mfrow=c(3,2))
  for(i in unique(dat$pid)) {
    dd<-subset(dat,pid==i)
    m1<-subset(preds[['1j']],pid==i)

    # Flux plot
    plot(dd$ct,dd$j.ave,type='p',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Emission rate (kg N/ha-hr)',las=1,lwd=2.5,cex=2,col='skyblue',main=dd$pid[1],ylim=range(c(dd$j.ave))+1E-10)
    logaxis(2)
    points(j ~ ct,data=m1,col='red',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)

    # Cumulative emission plot
    plot(dd$ct,dd$emis.cum,type='p',xlab='Time since application (hr)',ylab='Cumulative emission (kg N/ha-hr)',las=1,lwd=2.5,cex=2,col='skyblue',main=dd$pid[1],ylim=c(0,max(c(dd$emis.cum,dd$tan.app.rate,m1$e))))
    abline(h=dd$tan.app.rate[1],lty=2)
    points(e ~ ct,data=m1,col='red',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
  }
dev.off()

