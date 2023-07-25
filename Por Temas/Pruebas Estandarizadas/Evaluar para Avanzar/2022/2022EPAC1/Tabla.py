import random
import numpy as np
from prettytable import PrettyTable

# Generar datos aleatorios
min = random.randint(5,10)
max = random.randint(60,81)
data = [random.randint(min,max) for _ in range(1000)]

# Calcular percentiles
pts = [10,20,25,35,45,50,60,70,75,85,95,100]
p = np.percentile(data, pts)
p = [round(x,0) for x in p]
p = np.array(p, dtype='int')

# Crear tabla
tabla = PrettyTable(["Percentil", "Edad"])

for i in range(len(pts)):
    tabla.add_row([pts[i], p[i]])  

#tabla.pprint()
print(tabla)
