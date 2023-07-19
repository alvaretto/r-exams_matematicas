## exams ----------------------------------------------------------------------------
setwd("/media/datascience/Bodega/Nubes/2023/Rexams2023/Repositorio/schoice/Schioce_2023/Schoice2023/PorTemas/SABER ICFES/SaberICFES_Julio_2021_01")
##load package
library(exams)
library(tinytex)
library(tikzDevice)
#library(magick)
library(tth)

vexes <- 10

rep01 <- rep(("01.Rmd"), vexes)
rep04 <- rep(("04.Rmd"), vexes)
rep08 <- rep(("08.Rmd"), vexes)
rep08z <- rep(("08z.Rmd"), vexes)
rep09 <- rep(("09.Rmd"), vexes)
rep28 <- rep(("28.Rmd"), vexes)
rep24 <- rep(("24.Rmd"), vexes)
rep37 <- rep(("37.Rmd"), vexes)
rep98 <- rep(("98.Rmd"), vexes)
rep99 <- rep(("99.Rmd"), vexes)
rep100 <- rep(("100.Rmd"), vexes)
rep101_1 <- rep(("101_1.Rmd"), vexes)

rep99

##p37<-sample(c("37a.Rmd","37b.Rmd","37c.Rmd","37d.Rmd"),1)
#examen01<-c(rep09)
##examen01<-c("09.Rmd","98.Rmd","99.Rmd","100.Rmd","temporal4_1.Rmd")
# examen01<-c("01.Rmd","04.Rmd","08.Rmd","09.Rmd","23.Rmd","24.Rmd",
#             "37.Rmd","98.Rmd","99.Rmd","100.Rmd")
# examen01<-c("09.Rmd","100b.Rmd","09b.Rmd","37c.Rmd","09c.Rmd","37b.Rmd",
#             "100.Rmd","37.Rmd")

examen01<-rep(c("01.Rmd","04.Rmd","08.Rmd","08z.Rmd","09.Rmd", "24.Rmd",
            "37.Rmd", "98.Rmd", "99.Rmd", "100.Rmd", "101_1.Rmd"),10)

# examen01 <- c(rep01, rep04, rep08, rep08z, rep09, rep24, rep37, rep98, rep99,
#             rep100, rep101_1)

semilla<-sample(100:1e8, 1)
semilla
set.seed(semilla) 

# exams2pdf(examen01,name="Taller_Saber_Matemáticas03_",
#            encoding="UTF-8",n=1,template=("exam"),
#            dir="salida",edir="ejercicios")
# set.seed(semilla)

# exams2pdf(examen01,name="Respuestas_Taller_Saber_Matemáticas03_",
#            encoding="UTF-8",n=1,template=c("soluciontallerespc"),
#            dir="salida",edir="ejercicios")

#set.seed(semilla)

exams2moodle(examen01,n=1,svg=TRUE,name="Diagn01",
              encoding="UTF-8",dir="salida",edir="ejercicios",
              mchoice = list(shuffle = TRUE,answernumbering = "ABCD",
              solution = FALSE,
              eval = list(partial = TRUE,rule = "none")))

# exams2html("examen01",svg=TRUE)
# set.seed(semilla)
# exams2pandoc(examen01, n = 1, dir = "salida", type = "docx")
# set.seed(semilla)
# exams2pandoc(examen01, n = 1, dir = "salida", type = "odt")



## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
## exams2html("exercises/deriv.Rmd")
## -----------------------------------------------------------------------------

