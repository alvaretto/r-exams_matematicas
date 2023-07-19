#```{python, echo = FALSE, results = "hide", fig.path = "", fig.cap = ""}
#importa la librería matplotlib
import matplotlib.pyplot as plt

#crea una figura y un eje
fig, ax=plt.subplots(figsize=(8,4))

#crea una tupla con los valores a representar en el gráfico circular (torta)
values = (r.zolokarro, r.zoloapto, r.zolokaza, r.karroykaza, r.karroyapto)

#crea una tupla con las etiquetas para cada parte del gráfico circular
etiquetas=["Solo carro", "Solo apartamento", "Solo casa", "Carro y casa", "Carro y apartamento"]

#crea una tupla con los valores para la separación de cada parte del gráfico circular
extraccion=0,0,0,0,0

#crea una función para sumar los valores de cada parte del gráfico circular
def make_autopct(values):
    def my_autopct(pct):
        total = sum(values)
        val = int(round(pct*total/100.0))
        #return '{p:.2f}%  ({v:d})'.format(p=pct,v=val)
        return '{v:d}'.format(p=pct,v=val)
    return my_autopct

#crea el gráfico circular
plt.pie(values, 
        autopct=make_autopct(values),
        pctdistance=1.17,
        colors=r.colores,
        explode=extraccion,
        startangle=90,
        counterclock=False,
        shadow=True)

#agrega un título al gráfico circular
ax.set_title("Personas\n", fontsize=11, fontweight="light")

#cambia el tamaño de fuente y el peso del título
plt.rcParams.update({'font.size': 10, 'font.weight' : 'normal'}) 

#añade una leyenda al gráfico circular
ax.legend(etiquetas,bbox_to_anchor =(1, 1), ncol = 1,shadow= True)

#muestra el gráfico circular
#plt.show();
fig
#```
