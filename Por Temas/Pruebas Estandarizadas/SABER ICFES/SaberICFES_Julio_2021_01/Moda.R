x <- c(1, 5, 1, 6, 2, 1, 6, 7, 1,7,7,7,7,7,7)
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
mode(x)
