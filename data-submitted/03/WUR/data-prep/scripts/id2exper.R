# Convert id experiment

id2exper <- function(x, pref) {
  x <- gsub('\\.1', 'a', x)
  x <- gsub('\\.2', 'b', x)
  x <- gsub('A', 'a', x)
  x <- gsub('B', 'b', x)
  x <- paste0(pref, substr(x, 1, 8))
  x <- gsub('-$', '', x)
  return(x)
}
