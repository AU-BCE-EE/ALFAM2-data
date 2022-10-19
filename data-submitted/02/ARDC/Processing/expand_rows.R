# For filling blank rows with data from above
# S. Hafner
# 23 FEB 2015

x<-read.table('blocks.txt',sep='\t')
head(x)
x[x=='']<-NA
x[x=='.']<-NA
dfsumm(x)

for(i in 2:nrow(x)) {
  if(is.na(x[i,1])) x[i,]<-x[i-1,]
}

x[is.na(x)]<-''
write.table(x,'blocks.out',sep='\t',row.names=FALSE)
