
# Write compressed csv files
fwrite(pdat.comb, '../../data-output/04/ALFAM2_plot.csv.gz')
fwrite(idat.comb, '../../data-output/04/ALFAM2_interval.csv.gz')

# Record data version also
cat(paste0('Database version: ', version, '. Date created: ', Sys.time()), file = '../../logs/04/data_version.txt')
cat(paste0('Database version: ', version, '. Date created: ', Sys.time()), file = '../../data-output/04/data_version.txt')
