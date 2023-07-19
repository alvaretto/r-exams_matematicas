import random

def minutos_usados(mismo_operador, diferente_operador):
    return mismo_operador + 2 * diferente_operador

def generar_opciones(rango_mismo_operador, rango_diferente_operador, rango_plan):
    for _ in range(1000):  # Limitar el número de iteraciones
        total_plan = random.randint(*rango_plan)
        opciones = {
            'A': (random.randint(*rango_mismo_operador), random.randint(*rango_diferente_operador)),
            'B': (random.randint(*rango_mismo_operador), random.randint(*rango_diferente_operador)),
            'C': (random.randint(*rango_mismo_operador), random.randint(*rango_diferente_operador)),
            'D': (random.randint(*rango_mismo_operador), random.randint(*rango_diferente_operador))
        }
        correctas = sum(minutos_usados(mismo_operador, diferente_operador) <= total_plan
                          for mismo_operador, diferente_operador in opciones.values())
        if correctas == 1:
            return total_plan, opciones
    raise ValueError("No se pudo generar opciones con exactamente una correcta")

rango_mismo_operador = (50, 300)
rango_diferente_operador = (20, 300)
rango_plan = (200, 500)

total_plan, opciones = generar_opciones(rango_mismo_operador, rango_diferente_operador, rango_plan)

salidas = {opcion: random.choice([
    f"{mismo_operador} minutos mismo operador, {diferente_operador} minutos diferente operador",
    f"{diferente_operador} minutos diferente operador, {mismo_operador} minutos mismo operador"
]) for opcion, (mismo_operador, diferente_operador) in opciones.items()}

respuestas = [
    f"{mismo_operador} minutos mismo operador, {diferente_operador} minutos diferente operador",
    f"{diferente_operador} minutos diferente operador, {mismo_operador} minutos mismo operador"
]

for opcion, (mismo_operador, diferente_operador) in opciones.items():
    if minutos_usados(mismo_operador, diferente_operador) <= total_plan:
        respuesta_correcta = respuestas.pop(0)
        break

salidas_a = salidas['A']
salidas_b = salidas['B']
salidas_c = salidas['C']
salidas_d = salidas['D']
opcion_correcta = opcion
respuesta_correcta = respuesta_correcta
