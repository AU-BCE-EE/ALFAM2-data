# Create csv files

makeCSV <- function(xfile) {

    # Path to parallel csv files
    jcsv <- gsub('submitted|xlsx', 'csv', xfile)
    # Remove spaces
    jcsv <- gsub(' ', '', jcsv)
    # Remove parentheses
    jcsv <- gsub('\\(|\\)', '', jcsv)
    jcsvdir <- gsub(strsplit(jcsv, '\\/')[[1]][5], '', jcsv)
    # NTS try dirname(jcsv)

    # Create directory if needed
    if (!dir.exists(jcsvdir)) {
      dir.create(jcsvdir)
    }

    # Track whether a file has been skipped
    skip.file <- FALSE

    # Convert to csv
    # Note " added to deal with spaces in file names
    system2(command = 'ssconvert', args = c('-S',  paste0("'", xfile, "'"), paste0("'", jcsv, "'")), 
            stdout = FALSE, stderr = FALSE)

    # Get names of files for individual sheets
    csvs <- paste0(jcsv, '.', 0:11)

    cat('\n', 'file ', xfile, '\n')

    return(csvs)

}
