# Pull new data from list

# Stack individual interval and plot level data frames from each file together
pdat <- idat <- data.frame()
# Extract and stack plot and interval level data
for (i in dat) {
  for (j in i) {
    pdat <- rbindf(pdat, j$plots)
    idat <- rbindf(idat, j$emis)
  }
}
