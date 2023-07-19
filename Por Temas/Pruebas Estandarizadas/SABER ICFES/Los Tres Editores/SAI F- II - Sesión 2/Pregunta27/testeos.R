library(dplyr)

df <- data.frame(x = 1:10, y = 11:20)

# Extraer 3 filas aleatorias
df_random <- df %>% sample_n(3)

# Extrae aleatoriamente el n% de filas del df original. En este caso, 50% de filas
df_random <- df %>% sample_frac(0.5)
df_random
#######################

Producto <- c('Televisor 4K 32"', 'Equipo de sonido', 'Lavadora 24 Lb', 
              'Nevera 368 lts', 'Nevecón 530 lts', 'Congelador 198 lts', 
              'Lavadora 14 kg.', 'Lavavajillas', 'Estufa de piso', 
              'Horno microondas', 'Licuadora profesional', 'Freidora de aire',
              'Hidrolavadora', 'Computador portátil')
Prexio <- c("$ 1.800.000", "$ 1.000.000", "$ 1.200.000", "$ 2.400.000", 
            "$ 4.600.000", "$ 1.200.000", "$ 3.200.000", "$ 4.900.000", 
            "$ 1.500.000", "$ 400.000", "$ 420.000", "$ 370.000", "$ 440.000",
            "$ 2.900.000")

# Crea un DataFrame con las columnas seleccionadas
df <- data.frame(Producto, Prexio)
df

# Extrae aleatoriamente n filas del df original. En este caso, 3 filas
df_random <- df %>% sample_n(3)
df_random

#########################################

x <- "$ 1.800.000"
x <- gsub("\\.", "", x) # reemplaza los puntos con nada
x <- gsub("\\$", "", x) # reemplaza el símbolo de dólar con nada
x <- as.numeric(x)
x

#########################################

df1 <- data.frame(col1 = c(1, 2, 3))
df2 <- data.frame(col1 = c(1, 2))
result <- df1[!df1$col1 %in% df2$col1, ]
result

#################
dat <- mtcars[1:3, 1:6]
large <- function(x){
  paste0('{\\Large{\\bfseries ', x, '}}')
}
italic <- function(x){
  paste0('{\\emph{ ', x, '}}')
}
print(xtable(dat),
      sanitize.rownames.function = italic,
      sanitize.colnames.function = large,
      booktabs = TRUE)