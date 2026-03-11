# Pull new data from list

# Stack individual interval and plot level data frames from each file together
pdat <- idat <- data.table()
# Extract and stack plot and interval level data
for (i in dat) {
  for (j in i) {
    pdat <- rbind(pdat, j$plots, fill = TRUE)
    idat <- rbind(idat, j$emis, fill = TRUE)
  }
}
