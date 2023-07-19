library(exams)
library(reticulate)
library(ggplot2)
library(knitr)
library(purrr)

options(pdflatex = "/usr/bin/pdflatex")
Sys.setenv(PATH = paste("/usr/local/texlive/2017basic/bin/x86_64-linux", Sys.getenv("PATH"), sep = ":"))
typ <- match_exams_device()
use_python("/usr/bin/python3")
options(scipen = 999)
options(tinytex.verbose = TRUE)
knitr::opts_chunk$set(warning = FALSE, message = FALSE)

########
# Definición de variables
programas <- c('algod', 'mixto', 'vest', 'sint', 'delic', 'lana', 'express', 'tend')
dur <- map_dbl(programas, ~sample(seq(35, 150, 5), 1))
ag <- map_dbl(programas, ~sample(seq(15, 80, 5), 1))
det <- map_dbl(programas, ~sample(seq(15, 80, 5), 1))

objetos <- c('toalla_man', 'toalla_ba', 'sab_sen', 'sab_dob', 'cob', 'panu', 'mant')
peso <- map_dbl(objetos, ~sample(seq(0.1, 2.6, 0.1), 1))
peso_maxc <- sample(seq(2, 4, 1), 1)
########

library(knitr)
library(kableExtra)

# Crear el data frame
tabla1 <- data.frame(
  Programa = c("1", "2", "3", "4", "5", "6", "7", "8"),
  `Una carga de ropa` = c("Algodones", "Mixto", "Vestidos", "Sintéticos", "Delicados", "De lana", "Express", "Tendidos"),
  Duracion = paste(dur, "min"),
  `Agua (L)` = ag,
  `Detergente (g)` = det
)

# Seleccionar cargas de ropa sin repetición
cargas_ropa <- sample(c("Algodones", "Mixto", "Vestidos", "Sintéticos", "Delicados", "De lana", "Express", "Tendidos"), 7)

# Crear la tabla con kable y kableExtra
tabla1 %>%
  kable("html", escape = F, align = c("c", "l", "l", "c", "c"), col.names = c("Programa", "Una carga de ropa", "Duración", "Agua (L)", "Detergente (g)")) %>%
  kable_styling("striped", full_width = F, position = "center") %>%
  add_header_above(c("Tabla 1" = 5), background = "orange", align = "c") %>%
  row_spec(0, bold = T, color = "white", background = "orange", align = "c") %>%
  column_spec(1, width = "5em") %>%
  column_spec(2, width = "11em") %>%
  column_spec(3, width = "5em") %>%
  column_spec(4, width = "5em") %>%
  column_spec(5, width = "6em")

# Crear el nuevo data frame
tabla2 <- data.frame(
  Objeto = c("Toalla de manos", "Toalla de baño", "Sábana sencilla", "Sábana doble", "Cobija", "Pañuelo", "Mantel", "Peso máximo por carga:"),
  `Peso (kg)` = c(peso, peso_maxc)
)

# Crear la tabla con kable y kableExtra
tabla2 %>%
  kable("html", escape = F, align = c("l", "c"), col.names = c("Objeto", "Peso (kg)")) %>%
  kable_styling("striped", full_width = F, position = "center") %>%
  add_header_above(c("Tabla 2" = 2), background = "orange", align = "c") %>%
  row_spec(0, bold = T, color = "white", background = "orange") %>%
  row_spec(8, bold = T)  %>% # Hacer la última fila en negrita
  column_spec(1, width = "10em") %>%
  column_spec(2, width = "5em")

# Calcular el total de gramos
carga1 <- sample(c(1:3),1)
carga2 <- sample(c(1:2),1)
tot_gramos <- carga1 * det[match(cargas_ropa[1], tabla1$`Una carga de ropa`)] + carga2 * det[match(cargas_ropa[2], tabla1$`Una carga de ropa`)]

cargaz <- carga1 + carga2

answerlist <- list(
  paste(carga1, "carga(s) en el programa", cargas_ropa[1], "y", carga2, "carga(s) en el programa", cargas_ropa[2], "."),
  paste(carga1, "carga(s) en el programa", cargas_ropa[3], "y", carga2, "carga(s) en el programa", cargas_ropa[4], "."),
  paste(carga2, "carga(s) en el programa", cargas_ropa[5], "y", carga1, "carga(s) en el programa", cargas_ropa[6], "."),
  paste(carga1, "carga(s) en el programa", cargas_ropa[6], "y", carga2, "carga(s) en el programa", cargas_ropa[7], ".")
)


