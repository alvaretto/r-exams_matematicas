import matplotlib.pyplot as plt
import numpy as np

# Constantes
P = 10

# Función para calcular el área en función de la longitud
def area(l):
    return l * (P - 2*l) / 2

# Generar valores de longitud
l_values = np.linspace(0, P/2, 100)

# Calcular valores correspondientes de área
area_values = area(l_values)

# Crear la gráfica
plt.figure(figsize=(8, 6))
plt.plot(l_values, area_values, label="Área del rectángulo")
plt.xlabel("Longitud (l)")
plt.ylabel("Área")
plt.title("Área de un rectángulo en función de la longitud")
plt.legend()
plt.grid(True)
plt.show()
