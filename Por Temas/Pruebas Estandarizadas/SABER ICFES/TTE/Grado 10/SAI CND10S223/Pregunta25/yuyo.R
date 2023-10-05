# Instalar y cargar las bibliotecas necesarias
#install.packages(c("rnaturalearth", "ggplot2", "sf"))

library(sf)
library(rnaturalearth)
library(ggplot2)

# Obtener datos geoespaciales de los países de América del Sur
america_sur <- ne_countries(scale = "medium", returnclass = "sf", continent = "South America")

# Filtrar solo los países que nos interesan usando filtrado base de R
paises_seleccionados <- america_sur[america_sur$name %in% c("Colombia", "Bolivia", "Brazil", "Argentina"), ]

# Visualizar el mapa
ggplot() +
  geom_sf(data = paises_seleccionados, aes(fill = name)) +
  theme_minimal() +
  labs(fill = "País", title = "Países Seleccionados de América del Sur")


