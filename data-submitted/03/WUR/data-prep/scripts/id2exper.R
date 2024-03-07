# Convert id experiment
# Replaces .1 with a, .2 with b, and A/B to lowercase
# Fixes problem with unequal char length I think

id2exper <- function(x, pref) {
  x <- gsub('\\.1', 'a', x)
  x <- gsub('\\.2', 'b', x)
  x <- gsub('A', 'a', x)
  x <- gsub('B', 'b', x)
  x <- paste0(pref, substr(x, 1, 8))
  x <- gsub('-$', '', x)
  return(x)
}
