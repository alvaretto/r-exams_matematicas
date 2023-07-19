import pandas as pd

# Crear la tabla 1
tabla1 = pd.DataFrame({
    'Programa': ['Algodones', 'Mixto', 'Vestidos', 'Sintéticos', 'Delicados', 'De lana', 'Express', 'Tendidos'],
    'Duración': ['2h 30 min', '1h 30 min', '1h 40 min', '1h 10 min', '50 min', '50 min', '20 min', '1h 10 min'],
    'Agua (L)': [70, 50, 40, 50, 70, 20, 30, 60],
    'Detergente (g)': [65, 75, 55, 65, 45, 45, 65, 80]
})

# Crear la tabla 2
tabla2 = pd.DataFrame({
    'Objeto': ['Toalla de manos', 'Toalla de baño', 'Sábana sencilla', 'Sábana doble', 'Cobija', 'Pañuelo', 'Mantel', 'Peso máximo por carga:'],
    'Peso (kg)': [0.2, 0.4, 0.5, 1, 2, 0.1, 0.3, 3]
})

# Opciones de respuesta
opciones = {
    'A': (tabla1.loc[tabla1['Programa'] == 'Algodones', 'Detergente (g)'].values[0] * 2) + (tabla1.loc[tabla1['Programa'] == 'Mixto', 'Detergente (g)'].values[0] * 2),
    'B': (tabla1.loc[tabla1['Programa'] == 'Mixto', 'Detergente (g)'].values[0] * 3) + (tabla1.loc[tabla1['Programa'] == 'Express', 'Detergente (g)'].values[0] * 1),
    'C': (tabla1.loc[tabla1['Programa'] == 'Vestidos', 'Detergente (g)'].values[0] * 2) + (tabla1.loc[tabla1['Programa'] == 'Delicados', 'Detergente (g)'].values[0] * 4),
    'D': (tabla1.loc[tabla1['Programa'] == 'Sintéticos', 'Detergente (g)'].values[0] * 4) + (tabla1.loc[tabla1['Programa'] == 'Tendidos', 'Detergente (g)'].values[0] * 4)
}

# Encontrar la opción correcta
opcion_correcta = [opcion for opcion, valor in opciones.items() if valor == 290 and (opcion == 'A' or opcion == 'B')]

print("Tabla 1:")
print(tabla1)
print("\nTabla 2:")
print(tabla2)
print(f"\nLa opción correcta es: {opcion_correcta[0]}")

