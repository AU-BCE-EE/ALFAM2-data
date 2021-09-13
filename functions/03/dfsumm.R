# A function for summarizing data frames
# S. Hafner
# Modified: 10 August 2018

dfsumm <- function(x) {

   if(!any(class(x) %in% c("data.frame", "matrix")))
     stop("You can't use dfsumm on ", class(x), " objects!")

   cat("\n", nrow(x), "rows and", ncol(x), "columns")
   cat("\n", nrow(unique(x)), "unique rows\n")

   s <- matrix(NA, nrow = 7, ncol = ncol(x))

   for(i in 1:ncol(x)) {

     y <- x[, i, drop = TRUE]

     iclass <- class(y)[1]

     s[1, i] <- paste(class(y), collapse = ", ")

     yc <- na.omit(y)

     if(all(is.na(y))) {
       s[2:4, i] <- NA
     } else if(iclass%in%c("factor", "ordered")) { 
       s[2:4, i] <- levels(yc)[c(1, length(levels(yc)), round(mean(as.integer(yc))))] 
     } else if(iclass == "numeric") {
       s[2:4, i] <- as.character(signif(c(min(yc), max(yc), mean(yc)), 3)) 
     } else if(iclass == "logical") {
       s[2:4, i] <- as.logical(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2])) 
     } else if(grepl('POSIX', iclass[1])) {
       s[2:4, i] <- as.character(c(min(yc), max(yc), mean(yc)), format = '%Y-%m-%d %H:%M:%S') 
     } else {
       s[2:4, i] <- as.character(c(min(yc), max(yc), sort(yc)[floor(length(yc))/2]))
     }

     s[5, i] <- length(unique(yc))
     s[6, i] <- sum(is.na(y))
     s[7, i] <- !is.unsorted(yc)
   }

   s <- as.data.frame(s)

   rownames(s) <- c("Class", "Minimum", "Maximum", "Mean", "Unique (excld. NA)", "Missing values", "Sorted") 
   colnames(s) <- colnames(x)

   print(s)

}


