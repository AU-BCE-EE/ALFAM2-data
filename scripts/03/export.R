
# Write regular csv files
write.csv(pdat.comb, '../../data-output/03/ALFAM2_plot.csv', row.names = FALSE)
write.csv(idat.comb, '../../data-output/03/ALFAM2_interval.csv', row.names = FALSE)

# And then compress them
R.utils::gzip('../../data-output/03/ALFAM2_plot.csv', overwrite = TRUE)
R.utils::gzip('../../data-output/03/ALFAM2_interval.csv', overwrite = TRUE)

# Record data version also
cat(paste0('Database version: ', version, '. Date created: ', Sys.time()), file = '../../logs/03/data_version.txt')
cat(paste0('Database version: ', version, '. Date created: ', Sys.time()), file = '../../data-output/03/data_version.txt')
