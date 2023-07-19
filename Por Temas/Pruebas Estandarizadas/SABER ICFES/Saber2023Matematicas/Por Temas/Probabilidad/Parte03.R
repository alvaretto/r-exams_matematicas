library(exams)
library(reticulate)
library(ggplot2)
library(dplyr)
library(RColorBrewer)

# crea un diccionario que mapea los valores de algunos a las variables correspondientes
mapa <- list(
  karro = list(nhum = zolokarro, dnm = clientes, nhum2 = clientes, 
               dnm2 = zolokarro,
               nhum3 = zolokarro, dnm3 = zolokaza, nhum4 = karroykaza, 
               dnm4 = zolokaza),
  aptto = list(nhum = zoloapto, dnm = clientes, nhum2 = clientes, dnm2 = zoloapto,
               nhum3 = zolokarro, dnm3 = zolokaza, nhum4 = karroykaza, 
               dnm4 = zolokaza),
  kazza = list(nhum = zolokaza, dnm = clientes, nhum2 = clientes, dnm2 = zolokaza,
               nhum3 = zolokarro, dnm3 = zolokaza, nhum4 = karroykaza, 
               dnm4 = zolokaza),
  karrokazza = list(nhum = karroykaza, dnm = clientes, nhum2 = clientes, 
                    dnm2 = karroykaza,
                    nhum3 = zolokarro, dnm3 = zolokaza, nhum4 = karroykaza, 
                    dnm4 = zolokaza),
  default = list(nhum = karroyapto, dnm = clientes, nhum2 = clientes, 
                 dnm2 = karroyapto,
                 nhum3 = zolokarro, dnm3 = zolokaza, nhum4 = karroykaza, 
                 dnm4 = zolokaza)
)

# obtiene los valores correspondientes a algunna usando el diccionario
valores <- mapa[[ifelse(halgunna %in% names(mapa), algunna, "default")]]

# asigna los valores correspondientes a las variables
nhum <- valores$nhum
dnm <- valores$dnm
nhum2 <- valores$nhum2
dnm2 <- valores$dnm2
nhum3 <- valores$nhum3
dnm3 <- valores$dnm3
nhum4 <- valores$nhum4
dnm4 <- valores$dnm4

# nhum <- as.numeric(nhum)
# dnm <- as.numeric(dnm)