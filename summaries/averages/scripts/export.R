
fwrite(cdat, '../output/country_means.csv')
fwrite(sdat, '../output/source_means.csv')
fwrite(odat, '../output/overall_means.csv')

file.copy('../../../data-output/03/data_version.txt', '../output/data_version.txt')
file.copy('../../../data-output/03/data_version.txt', '../logs/data_version.txt')

