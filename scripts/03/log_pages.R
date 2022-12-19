# Creates log pages stuff

# Remove all files from docs
log.list <- list.files('../../docs/', full.names = TRUE)
file.remove(log.list)

# Copy all html logs into docs
log.list <- list.files('../../logs/03/html/', full.names = TRUE)
file.copy(log.list, '../../docs/', overwrite = TRUE)

# List of log files
log.list <- list.files('../../docs/')

# Remove extension for link names
log.list <- gsub('\\.html', '', log.list)
log.list <- log.list[!grepl('^index', log.list)]

# Create index with links to all logs
sink('../../docs/index.html')
  cat('<header>\n')
  cat('<h1>Data submission log files</h1>\n')
  cat(paste0('<h2>Version: ', version, '</h2>\n'))
  cat('</header>\n')
  cat('Use the links below to check submitted data. Log files names start with institution abbreviation, then submitter name, and end with the name of the completed ALFAM2 template file.\n')
  cat('\n')
  cat('<ol>\n')
  for (f in log.list) {
    cat(paste0('<li> <a href="https://sashahafner.github.io/ALFAM2-data/', f, '.html">', f, '</a> </li>\n'))
  }
  cat('</ol>\n')
sink()
