
import random
import numpy as np
import matplotlib.pyplot as plt

# Opciones de bienes
opciones_bienes = ['Solo carro', 'Solo apartamento', 'Solo casa', 'Carro y casa', 'Carro y apartamento']

while True:
    # Generar resultados de la encuesta de manera aleatoria
    resultados_encuesta = []
    num_personas = random.randint(100, 500)

    for i in range(num_personas):
        resultados_encuesta.append(random.choice(opciones_bienes))

    # Generar gráfico circular si los resultados son diferentes
    labels, counts = np.unique(resultados_encuesta, return_counts=True)
    if len(counts) > 1:
        plt.pie(counts, labels=None, counterclock=True, autopct='%1.0f')#'%1.2f%%'
        plt.axis('equal')
        plt.show()
        break
