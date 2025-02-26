
rounddf <- function(x, digits = rep(2, ncol(x)), func = round, pad = FALSE) {

  # Convert data.table to data frame
  DT <- FALSE
  if (class(x)[1] == 'data.table') {
    x <- as.data.frame(x)
    if (requireNamespace('data.table', quietly = TRUE)) {
      DT <- TRUE
    }
  }

  # Get digits vector if needed
  if (length(digits) == 1) {
    digits <- rep(digits, ncol(x))
  } else if (length(digits) != ncol(x)) {
    digits <- c(digits, rep(digits[1], ncol(x) - length(digits)))
    warning('First value in digits repeated to match length.')
  }

  # Round
  for (i in 1:ncol(x)) {
    if (class(x[, i, drop = TRUE])[1] == 'numeric') {
      x[, i] <- func(x[, i], digits[i])
      # Pad with trailing zeroes (only works well in some cases)
      # Ignored if every row does not have decimal point
      if (pad && all(grepl('\\.', x[, i]))) {
        ff <- max(nchar(gsub('.+\\.', '', x[, i])))
        fmt <- paste0('%.0', ff, 'f')
        x[, i] <- sprintf(fmt, x[, i])
      }
    }
  }

  # Convert back to data.table if that was input format
  if (DT) {
    x <- data.table::data.table(x)
  }

  return(x)
}
