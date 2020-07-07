# For making plots
# Needs: d

pdf("all_emis.pdf",height=5,width=5)
  plot(d$ct, d$j.rel,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1),bg='blue')
  rect(par("usr")[1], 10^par("usr")[3], par("usr")[2], 10^par("usr")[4],col="blue")
  box()
  logaxis(2)
  for(i in unique(d$pid)) {
    dd<-subset(d,pid==i)
    lines(dd$ct,dd$j.rel,lwd=3,col="#FFFFFF09")
  }
dev.off()

#pdf("all_pred.pdf",height=5,width=5)
#  plot(d$ct, d$j.pred,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Relative emission rate (fraction of applied N/hr)',las=1,xlim=c(0,110),ylim=c(2E-5,1),bg='blue')
#  rect(par("usr")[1], 10^par("usr")[3], par("usr")[2], 10^par("usr")[4],col="blue")
#  box()
#  logaxis(2)
#  for(i in unique(d$pid)) {
#    dd<-subset(d,pid==i)
#    lines(dd$ct,dd$j.pred/dd$tan.app.rate,lwd=3,col="#FFFFFF09")
#  }
#dev.off()

pdf("each_pred.pdf",height=11,width=8.5)
  par(mfrow=c(3,2))
  for(i in unique(d$pid)) {
    dd<-subset(d,pid==i)
    m1<-subset(opreds[['1j']],g==i)
    m2<-subset(preds[['3e']],pid==i)
    m3<-subset(preds[['4e']],pid==i)
    m4<-subset(preds[['1j']],pid==i)

    # Flux plot
    plot(dd$ct,dd$j.ave,type='o',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Emission rate (kg N/ha-hr)',las=1,lwd=2.5,cex=2,col='skyblue',main=dd$pid[1],ylim=range(c(dd$j.ave,p3$j,p11$j))+1E-10)
    logaxis(2)
    points(j ~ ct,data=m1,col='red',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(j ~ ct,data=m2,col='orange',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(j ~ ct,data=m3,col='purple',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(j ~ ct,data=m4,col='black',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)

    # Cumulative emission plot
    plot(dd$ct,dd$emis.cum,type='o',xlab='Time since application (hr)',ylab='Cumulative emission (kg N/ha-hr)',las=1,lwd=2.5,cex=2,col='skyblue',main=dd$pid[1],ylim=c(0,max(c(dd$emis.cum,dd$tan.app.rate,m1$e,m2$e,m3$e))))
    abline(h=dd$tan.app.rate[1],lty=2)
    points(e ~ ct,data=m1,col='red',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(e ~ ct,data=m2,col='orange',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(e ~ ct,data=m3,col='purple',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(e ~ ct,data=m4,col='black',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
  }
dev.off()

pdf("each_pred_sel.pdf",height=11,width=8.5)
  par(mfrow=c(3,2))
  #for(i in c('IGER-NW251-1D-4','IUL/FAT-IUL/FAT92-96-F15-2','CRPA-2-2-4','DIAS-1994-4-86','DIAS-1997sl-15-8','CRPA-3-9-1','DIAS-1994-7-89','IGER-NW251-1G-7','IMAG--1992-17-64','IUL/FAT-IUL/FAT92-96-F7-2','IGER-NW251-1B-6','IMAG--1992-21-67')) {
  for(i in c('IGER-NW251-1D-4','CRPA-2-2-4','DIAS-1997sl-15-8','CRPA-3-9-1','DIAS-1994-7-89','IGER-NW251-1G-7','IMAG--1992-17-64','IUL/FAT-IUL/FAT92-96-F7-2','IGER-NW251-1B-6','IMAG--1992-21-67')) {
    dd<-subset(d,pid==i)
    m1<-subset(opreds[['1j']],g==i)
    m2<-subset(preds[['1j']],pid==i)
    m3<-subset(preds[['3j']],pid==i)

    # Flux plot
    plot(dd$ct,dd$j.ave,type='n',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Emission rate (kg N/ha-hr)',las=1,lwd=3.5,cex=1.9,col='gray35',main=dd$pid[1],ylim=range(c(dd$j.ave,m3$j))+1E-10)
    logaxis(2)
    #lines(j.ave ~ ct,data=dd,col='skyblue',lwd=1.5)
    points(j.ave ~ ct,data=dd,col='blue',cex=2.5,lwd=1.5)
    lines(j ~ ct,data=m1,col='red',type='l',lwd=1.5)
    lines(j ~ ct,data=m2,col='orange',type='l',lwd=1.5)
    lines(j ~ ct,data=m3,col='darkgreen',type='l',lwd=1.5)
    axis(3,at=dd$ct,labels=FALSE)

    # Cumulative emission plot
    plot(dd$ct,dd$emis.cum,type='n',xlab='Time since application (hr)',ylab='Cumulative emission (kg N/ha-hr)',las=1,lwd=3.5,cex=2,col='gray35',main=dd$pid[1],ylim=c(0,max(c(dd$emis.cum,dd$tan.app.rate,m1$e,m2$e,m3$e))))
    abline(h=dd$tan.app.rate[1],lty=2)
    #lines(emis.cum ~ ct,data=dd,col='skyblue',lwd=1.5)
    points(emis.cum ~ ct,data=dd,col='blue',pch=1,cex=2.5,lwd=1.5)
    lines(e ~ ct,data=m1,col='red',type='l',lwd=1.5)
    lines(e ~ ct,data=m2,col='orange',type='l',lwd=1.5)
    lines(e ~ ct,data=m3,col='darkgreen',type='l',lwd=1.5)
    axis(3,at=dd$ct,labels=FALSE)

  }
dev.off()


pdf("each_pred_broad.pdf",height=11,width=8.5)
  par(mfrow=c(3,2))
  for(i in unique(db$pid)) {
    dd<-subset(db,pid==i)
    m1<-subset(preds[['3e']],pid==i)
    m2<-subset(preds[['3em']],pid==i)
    m3<-subset(preds[['3em']],pid==i)

    # Flux plot
    plot(dd$ct,dd$j.ave,type='o',log='y',yaxt='n',xlab='Time since application (hr)',ylab='Emission rate (kg N/ha-hr)',las=1,lwd=3.5,cex=2,col='skyblue',main=dd$pid[1],ylim=range(c(dd$j.ave,m3$j,p11$j))+1E-10)
    logaxis(2)
    points(j ~ ct,data=m1,col='red',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(j ~ ct,data=m2,col='purple',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    #points(j ~ ct,data=m3,col='purple',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)

    # Cumulative emission plot
    plot(dd$ct,dd$emis.cum,type='o',xlab='Time since application (hr)',ylab='Cumulative emission (kg N/ha-hr)',las=1,lwd=1.5,cex=2,col='blue',main=dd$pid[1],ylim=c(0,max(c(dd$emis.cum,dd$tan.app.rate,m1$e,m2$e,m3$e))))
    abline(h=dd$tan.app.rate[1],lty=2)
    points(e ~ ct,data=m1,col='red',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    points(e ~ ct,data=m2,col='purple',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
    #points(e ~ ct,data=m3,col='purple',type='l',cex=1.1,pch=5,lwd=1.5,lty=1)
  }
dev.off()

pdf("fu0_v_app.pdf",height=5,width=5)
  stripchart(exp(int0.4e)/(1 + exp(int0.4e))  ~ man.app,data=ds,vertical=TRUE,method='jitter',jitter=0.2,las=1,ylab='Initial fraction unavailable')
  axis(3,labels=FALSE)
dev.off()



pdf("int1_v_app.pdf",height=5,width=5)
  #beanplot(int1.1j ~ man.app,data=ds,ll=0.07,ylim=c(-10,1),col=c('skyblue','red','red'),beanlines='median',las=1,xlab="Application type",ylab=expression(log[10]~'Emission rate intercept'))
  beanplot(int1.3e ~ man.app,data=ds,ll=0.07,ylim=c(-10,2),col=c('skyblue','red','red'),beanlines='median',las=1,xlab="Application type",ylab=expression(log[10]~'Emission rate intercept'))
  abline(h=median(subset(ds,man.app=='broad')$int1.2),lwd=2,col='black')
dev.off()

pdf("fu0_v_app.pdf",height=5,width=5)
  beanplot(exp(fu0.3e)/(1 + exp(fu0.3e)) ~ man.app,data=ds,ll=0.07,ylim=c(0,1),col=c('skyblue','red','red'),beanlines='median',las=1,xlab="Application type",ylab=expression(log[10]~'Emission rate intercept'))
  abline(h=median(subset(ds,man.app=='broad')$int1.2),lwd=2,col='black')
dev.off()
  plot(exp(fu0.3e)/(1 + exp(fu0.3e)) ~ man.dm,data=ds)
  plot(int1.3e ~ man.dm,data=ds)
  plot(int1.3e ~ man.ph,data=ds,ylim=c(-10,10))

pdf("temp_v_app.pdf",height=5,width=5)
  beanplot(air.temp1.2 ~ man.app,data=ds,ll=0.07,ylim=c(-0.5,0.5),col=c('skyblue','red','red'),beanlines='median',las=1,xlab="Application type",ylab=expression(log[10]~'Emission rate intercept'))
  abline(h=median(subset(ds,man.app=='broad')$int1.2),lwd=2,col='black')
dev.off()


  beanplot(air.temp1.2 ~ man.app,data=ds,ll=0.07,ylim=c(-0.2,0.2),col=c('skyblue','red','red'),beanlines='median')

  plot(ct1.2 ~ man.dm,data=dsb)
  plot(int1.2 ~ man.ph,data=ds,ylim=c(-10,10))

plot(int2.2 ~ man.dm,data=dsb,ylim=c(-2,2))                                 
abline(lm(int2.2 ~ man.dm,data=subset(dsb,int2.2>-2)))

pairs(dsb[,c(17:22,6,7,11)])
