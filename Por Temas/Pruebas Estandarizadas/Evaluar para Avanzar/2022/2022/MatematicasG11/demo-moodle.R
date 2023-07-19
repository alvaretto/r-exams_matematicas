## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("deriv.Rmd", "swisscapital.Rmd", "boxplots.Rmd", "function.Rmd", "lm.Rmd", "currency8.Rnw")
## note that the currency exercise is in UTF-8 encoding


## exams2moodle ---------------------------------------------------------------------
## Moodle XML output (1 file containing all exams)
## -> for import into a Moodle system

## generate Moodle exam with three replications per question
exams2moodle(myexam, n = 3, name = "moodle-demo",
  encoding = "UTF-8",
  dir = "output",
  edir = "exercises")

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
exams2html("exercises/deriv.Rmd")


## ----------------------------------------------------------------------------------
