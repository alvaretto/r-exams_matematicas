## exams ----------------------------------------------------------------------------

## load package
library("exams")

## this script gives an overview of the example exercises provided
## and basic usage of exams2html/exams2pdf - for more advanced usage
## and further interfaces, see the other demo-*.R scripts

## to get an overview of the available exercises in this demo,
## switch to the "exercises" folder
setwd("exercises")
dir()

## in the following the exercises in R/Markdown (.Rmd) format are discussed
## for some more details see also http://www.R-exams.org/tutorials/first_steps/


## inspect individual exercises -----------------------------------------------------

## simply turn a single exercise into a HTML file (shown in browser, using MathML)
exams2html("deriv.Rmd")
## simply turn a single exercise into a HTML file (shown in browser, using MathJax)
exams2html("deriv.Rmd", converter = "pandoc-mathjax")
## or a PDF file (shown in PDF viewer)
exams2pdf("deriv.Rmd")

## extract the meta-information to check whether it is processed correctly
exams_metainfo(exams2html("deriv.Rmd"))


## types of exercises ---------------------------------------------------------------

## for an overview see also http://www.R-exams.org/templates/

## numeric exercises
exams2html(c(
  "deriv.Rmd",        ## product rule for derivatives
  "tstat.Rmd",        ## 1-sample t-test statistic
  "dist.Rmd",         ## distances and the Pythagorean theorem
  "regression.Rmd",   ## simple linear regression (by hand)
  "fruit.Rmd",        ## image-based systems of linear equations (numeric)
  "lagrange.Rmd",     ## method of Lagrange multipliers
  "currency8.Rmd"     ## convert currencies (UTF-8 encoding)
))

## single-choice exercises
exams2html(c(
  "swisscapital.Rmd", ## knowledge quiz question about the Swiss capital
  "Rlogo.Rmd",        ## knowledge quiz question about the R logo
  "deriv2.Rmd",       ## product rule for derivatives (single-choice, via num_to_schoice)
  "tstat2.Rmd",       ## 1-sample t-test statistic (single-choice, by hand)
  "dist3.Rmd",        ## distances and the Pythagorean theorem (single-choice, via num_to_schoice)
  "fruit2.Rmd",       ## image-based systems of linear equations (single-choice, via num_to_schoice)
  "hessian.Rmd",      ## 2x2 Hessian matrix (single-choice)
  "logic.Rmd"         ## interpretation of logic gates (using TikZ)
))

## multiple-choice exercises
exams2html(c(
  "switzerland.Rmd",  ## knowledge quiz question about Switzerland
  "gaussmarkov.Rmd",  ## knowledge quiz question about Gauss-Markov assumptions
  "anova.Rmd",        ## 1-way analysis of variance
  "boxplots.Rmd",     ## interpretation of 2-sample boxplots
  "scatterplot.Rmd",  ## interpretation of a scatterplot
  "ttest.Rmd",        ## interpretation of 2-sample t test
  "relfreq.Rmd",      ## interpretation of relative frequency tables
  "cholesky.Rmd",     ## Cholesky decomposition
  "automaton.Rmd"     ## interpretation of automaton diagrams (using TikZ)
))

## string exercises
exams2html(c(
  "function.Rmd",     ## string question about R functions
  "countrycodes.Rmd"  ## string question about ISO country codes
))

## cloze exercises (combining several num/schoice/mchoice/string parts)
exams2html(c(
  "lm.Rmd",           ## simple linear regression (with CSV data, schoice/num)
  "boxhist.Rmd",      ## univariate exploration of a CSV file (schoice/num)
  "confint2.Rmd",     ## 2-sided confidence interval (num)
  "dist2.Rmd",        ## three distances in a Cartesian coordinate system (num)
  "fourfold.Rmd"      ## fourfold table (num)
))


## encoding -------------------------------------------------------------------------

exams2html("currency8.Rmd",
  encoding = "UTF-8",
  template = "../templates/plain.html")
exams2pdf("currency8.Rmd",
  encoding = "UTF-8",
  template = "../templates/plain.tex")


## other interfaces -----------------------------------------------------------------

## switch back to the original folder
setwd("..")

## other interfaces include:
## - exams2pdf for customizable PDF output
## - exams2nops for a fixed PDF format that can be automatically scanned and evaluated
##
## - exams2html for customizable HTML output
## - exams2moodle for Moodle XML that can be imported into Moodle quizzes
## - exams2blackboard for QTI 1.2 that can be imported into Blackboard and compatible systems
## - exams2qti12/exams2qti21 for QTI XML (version 1.2 or 2.1) that can be imported
##   into various learning management systems (e.g., OLAT or OpenOLAT among others)
## - exams2canvas for QTI 1.2 for Canvas (via exams2qti12/exams2qti21)
## - exams2openolat for QTI 2.1 (or 1.2) for OpenOLAT (via exams2qti12/exams2qti21)
##
## - exams2arsnova for a JSON format that can be imported into ARSnova live quizzes
## - exams2pandoc for customizable outputs in various formats (Docx, ODF, PDF, ...)

## see the demo-*.R scripts in this directory for more examples
dir()


## ----------------------------------------------------------------------------------
