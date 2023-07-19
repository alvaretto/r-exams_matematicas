import random
import numpy as np
import matplotlib.pyplot as plt
from fractions import Fraction

# Opciones de bienes
opciones_bienes = random.sample(['Solo carro', 'Solo apartamento', 'Solo casa', 'Carro y casa', 
                                 'Carro y apartamento', 'Casa y apartamento', 
                                 'Casa, carro y apartamento', 'Ningún bien'], 5)

i = 0
while i == 0:
    perxonas = random.randrange(100, 801, 100)
    pu = random.sample(range(10, perxonas+1, 2), len(opciones_bienes))
    xsuma = sum(pu)
    if xsuma == perxonas:
        i = 1 
    else:
        i = 0
        
print(pu)
print(xsuma)
print(perxonas)

plt.pie(pu, explode=None, labels=None,
        autopct=lambda p: f'{p * perxonas / 100:.0f}',
        shadow=True, counterclock=False, startangle=90)
plt.axis('equal')
plt.show()

dixionario = {llave: valor for llave, valor in zip(opciones_bienes, pu)}
print(dixionario)

alghun = random.sample(opciones_bienes, 1)[0]
print(alghun)

# Buscar el valor correspondiente a la llave igual a 'alghun' en el diccionario
if alghun in dixionario:
    valor = dixionario[alghun]
    print(f"El valor de '{alghun}' es: {valor}")
else:
    print(f"No se encontró la llave '{alghun}' en el diccionario.")
    
# Desde dixionario

# Crear una copia del diccionario original
nuevo_diccionario = dixionario.copy()

# Eliminar la llave y valor asociado a la variable "alghun"
if alghun in nuevo_diccionario:
    del nuevo_diccionario[alghun]
else:
    print(f"La llave {alghun} no está en el diccionario.")

print(nuevo_diccionario)

# Convertir nuevo_diccionario en lista y extraer sus valores
balorres = list(nuevo_diccionario.values())


korrepta = Fraction(valor, perxonas)
posib2 = Fraction(perxonas, valor)
posib3 = Fraction(balorres[0], perxonas)
posib4 = Fraction(perxonas, balorres[0])
posib5 = Fraction(balorres[1], perxonas)
posib6 = Fraction(perxonas, balorres[1])
posib7 = Fraction(balorres[2], perxonas)
posib8 = Fraction(perxonas, balorres[2])
posib9 = Fraction(balorres[3], perxonas)
posib10 = Fraction(perxonas, balorres[3])

inkorr2 = random.sample((posib2, posib3), 1)

#inkorr3 = Fraction(
print(perxonas)
print(korrepta)
print(posib2)
print(posib3)
print(inkorr2)
