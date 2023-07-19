filaz <- c(sample(5:15,1)) # Rango filas que tendrá la tabla, p.e. entre 5 y 15 filas
filaz
totalle <- filaz-3
totalle
rango1 <- c(sample(1:totalle,1))
rango1
porcmbajo <- round(rango1/filaz*100,0)
porcmbajo
rango2 <- c(sample(1:totalle,1))
rango2
rango3 <- c(sample(1:totalle,1))
rango3
rango4 <- c(sample(1:totalle,1))
rango4

muybajo <- rep(c("Muy Bajo"), rango1)
muybajo
bajo <- rep(c("Bajo"), rango2)
bajo
medio <- rep(c("Medio"), rango3)
medio
alto <- rep(c("Alto"), rango4)
alto

rendimiento <- c(muybajo, bajo, medio, alto)
rendileng <- length(rendimiento)
rendileng

filaz



porcmbajo <- round(length(muybajo)/filaz*100,0)
porcmbajo