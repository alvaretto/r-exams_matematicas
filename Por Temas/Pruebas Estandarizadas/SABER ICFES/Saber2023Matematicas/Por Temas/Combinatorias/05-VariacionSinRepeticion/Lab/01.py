import random
import numpy as np
import matplotlib.pyplot as plt

# Opciones de bienes
opciones_bienes = ['Solo carro', 'Solo apartamento', 'Solo casa', 'Carro y casa', 'Carro y apartamento']

i = 0
while i == 0:
    # se corrige el typo en "personas" y se accede al primer elemento de la lista
    perxonas = random.randrange(100, 301, 2)
    pu = random.sample(range(10, 301, 2), 5)
    xsuma = sum(pu)
    if xsuma == perxonas: # se corrige el typo en "xsuma"
        i = 1 # se usa "1" en vez de "i+1" para salir del ciclo
    else:
        i = 0
        
print(pu)
print(pu[0])
print(xsuma)
print(perxonas)
#plt.pie(pu, labels=None, counterclock=True, autopct='%1.0f')
plt.pie(pu, explode=None, labels=None,
        autopct=lambda p: f'{p * perxonas / 100:.0f}',
        shadow=True, startangle=90)
plt.axis('equal')
plt.show()

