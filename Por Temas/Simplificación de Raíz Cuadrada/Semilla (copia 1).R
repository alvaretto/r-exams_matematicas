## exams ----------------------------------------------------------------------------
setwd("~/MEGA/MEGAsync/NuevoRStudio2022/Rmarkdowns/Esqueleto/exercises/schoice/Aprendizajes/Simplificación de Raíz Cuadrada")
##load package
library(exams)
library(tinytex)
library(tikzDevice)

##library(magick)
## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises

# parte1 <- sample(c("01A.Rmd","01B.Rmd","02A.Rmd","02B.Rmd"),4)
# parte2 <- sample(c("03A.Rmd","03B.Rmd","03B2.Rmd","03B3.Rmd"),4)
# parte3 <- sample(c("04A.Rmd","04B.Rmd","05Atkz.Rmd","05Btkz.Rmd","05Ctkz.Rmd"),4)
# parte4 <- sample(c("06Atkz.Rmd","06Btkz.Rmd","06Ctkz.Rmd","07Atkz.Rmd","07Btkz.Rmd"),5)
# parte5 <- sample(c("08tkz.Rmd","08tkz2.Rmd","09tkz.Rmd"),3)

# examen01<-c("01A.Rmd","01B.Rmd","02A.Rmd","02B.Rmd","03A.Rmd","03B.Rmd","03B2.Rmd",
# "03B3.Rmd","04A.Rmd","04B.Rmd","05Atkz.Rmd","05Btkz.Rmd","05Ctkz.Rmd","06Atkz.Rmd",
# "06Btkz.Rmd","06Ctkz.Rmd","07Atkz.Rmd","07Btkz.Rmd","08tkz.Rmd","08tkz2.Rmd","09tkz.Rmd")

#examen01 <- c("SinRad.Rmd")

expargrid <- function(file) {
  df <- expand.grid(nume)
  stopifnot(nrow(df) >= 1L)
  sapply(1L:nrow(df), function(i) {
    args <- as.list(df[i,])
    args <- c(list(file = file), args)
    do.call(exams::expar, args)
  })
}

myrad <- expargrid("SinRad.Rmd", nume=1)
myrad

#exams2moodle(myrad)

#examen01<-("CopyOf01A.Rmd")
## note that the currency exercise is in UTF-8 encoding

semilla<-sample(100:1e8, 1)
# semilla
# set.seed(semilla) 
##set.seed(11001) 

## Generate Moodle exam with three replications per question

# exams2pdf(examen01,name="Taller01_",encoding="UTF-8",n=1,template=("nuevotaller"),dir="salida",edir="ejercicios")
# set.seed(semilla) 
# exams2pdf(examen01,name="Respuestas_Taller01_",encoding="UTF-8",n=4,template=c("soluciontallerespc"),dir="salida",edir="ejercicios")
set.seed(semilla)
exams2html("myrad",svg=TRUE,converter = "pandoc-mathjax", 
           mathjax = TRUE)
##set.seed(semilla) 
##exams2pandoc(examen01, n = 1, dir = "salida", type = "docx")
##set.seed(semilla)
##exams2pandoc(examen01, n = 1, dir = "salida", type = "odt")

 # exams2moodle(myrad,n=1,svg=TRUE,name="radicalprimo",encoding="UTF-8",dir="salida",
 # edir="ejercicios",mchoice = list(shuffle = TRUE, answernumbering = "ABCD",
 #                                 eval = list(partial = TRUE, rule = "none")))


## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
# exams2html("ejercicios/CuatroTablas.Rnwd")

## ----------------------------------------------------------------------------------

