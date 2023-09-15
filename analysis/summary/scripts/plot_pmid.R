# Plot cumulative emission curves for all field plots (pmid)

pdf('../plots/emis_pmid.pdf', height = 11, width = 8.5)
  par(mfrow = c(6, 3), mar = c(1, 1, 1, 1))
  for (i in unique(idat$pmid)) {
    dd <- subset(idat, pmid == i)
    if (any(!is.na(dd$e.rel)) & any(!is.na(dd$ct))) {
      plot(e.rel ~ ct, data = dd, main = dd$pmid[1], type = 'l')  
    }
  }
dev.off()
