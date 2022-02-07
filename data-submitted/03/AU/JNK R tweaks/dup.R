
d <- read.table('w.txt', blank.lines.skip = FALSE)

head(d, 10)

d[270:275,]

for (i in 1:nrow(d)) {
  for (j in paste0('V', 1:6)) {
    if (is.na(d[i, j])) d[i, j] <- d[i + 1,j]
  }
}

write.table(d, 'w.out')
