if(!require('R.matlab')) {
  install.packages('R.matlab')
  library('R.matlab')
}
path <- system.file("mat-files", package = "R.matlab")
pathname <- file.path(path, "ABC.mat")
data <- readMat(pathname)
print(data)

