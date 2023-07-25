## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("deriv.Rmd", "swisscapital.Rmd", "boxplots.Rmd", "function.Rmd", "lm.Rmd", "currency8.Rnw")
## note that the currency exercise is in UTF-8 encoding


## exams2pdf ------------------------------------------------------------------------
## PDF output (1 file per exam)
## -> typically used for quickly checking if an exercise can be converted to PDF
## -> or customized via suitable templates

## generate the PDF version of a single exercise (shown in PDF viewer)
## with default settings
exams2pdf("exercises/deriv.Rmd")

## generate a single PDF exam (shown in PDF viewer)
## with specification of a template (for an exam) %s encoding
exams2pdf(myexam, n = 1,
  encoding = "UTF-8",
  edir = "exercises",
  template = "templates/solution.tex")

## generate three PDF exams and corresponding solutions in output directory
## (with the header used to set a custom Date and ID for the exam)
exams2pdf(myexam, n = 3, name = c("pdf-exam", "pdf-solution"),
  encoding = "UTF-8",
  dir = "output",
  edir = "exercises",
  template = c("templates/exam.tex", "templates/solution.tex"),
  header = list(
    Date = "2015-01-01",
    ID = function(i) formatC(i, width = 5, flag = "0")
  ))


## ----------------------------------------------------------------------------------
