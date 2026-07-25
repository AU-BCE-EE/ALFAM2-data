# Load data from sub.periods 1-3

idat.old <- data.table::fread('../../data-output/03/ALFAM2_interval.csv.gz')
fixEncoding(idat.old, '../../data-output/03/ALFAM2_interval.csv.gz')
pdat.old <- data.table::fread('../../data-output/03/ALFAM2_plot.csv.gz')
fixEncoding(pdat.old, '../../data-output/03/ALFAM2_plot.csv.gz')


