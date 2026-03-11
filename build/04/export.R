
# Write compressed csv files
fwrite(pdat.comb, paste0('../../data-output/', sprintf('%02d', sub.period), '/ALFAM2_plot.csv.gz'))
fwrite(idat.comb, paste0('../../data-output/', sprintf('%02d', sub.period), '/ALFAM2_interval.csv.gz'))

# Record data version also
ver_line <- paste0('Database version: ', version, '. Created by: ', Sys.info()['user'], '. Date: ', Sys.time())
cat(ver_line, file = '../../logs/04/data_version.txt')
cat(ver_line, file = '../../data-output/04/data_version.txt')
