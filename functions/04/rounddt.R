# Round all numeric columns in a data.table
# Modifies in place (by reference)

rounddt <- function(dt, digits = 2, func = round) {
  num_cols <- names(dt)[sapply(dt, is.numeric)]
  dt[, (num_cols) := lapply(.SD, func, digits), .SDcols = num_cols]
  invisible(dt)
}
