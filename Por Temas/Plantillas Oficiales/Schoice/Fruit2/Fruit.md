
### Problema
Dada la siguiente información:

\[
egin{align*}
+ + + & = 909 \
+ + + & = 516 \
+ + + & = 921
\end{align*}
\]

Calcular:

\[
+ + + = ?
\]

Opciones:

(a) 434  
(b) 378  
(c) 921  
(d) 678  
(e) 528

### Solución
La información proporcionada se puede interpretar como el precio de tres cestas de frutas con diferentes combinaciones de tres frutas. Esto corresponde a un sistema de ecuaciones lineales donde el precio de las tres frutas es el vector de incógnitas \( x \):

\[
egin{align*}
x_1 & = x_2 = x_3 = \
\end{align*}
\]

El sistema de ecuaciones lineales es entonces:

\[
egin{align*}
egin{bmatrix} 1 & 0 & 2 \ 2 & 0 & 1 \ 0 & 1 & 2 \end{bmatrix} egin{bmatrix} x_1 \ x_2 \ x_3 \end{bmatrix} = egin{bmatrix} 909 \ 516 \ 921 \end{bmatrix}
\]

Esto puede resolverse utilizando cualquier algoritmo de solución, por ejemplo, eliminación:

\[
x_1 = 41; \, x_2 = 53; \, x_3 = 434
\]

Basándonos en los tres precios de las diferentes frutas, es sencillo calcular el precio total de la cuarta cesta de frutas:

\[
+ + + = x_1 + x_2 + x_3 = 41 + 53 + 434 = 528
\]

Opciones:

(a) Falso  
(b) Falso  
(c) Falso  
(d) Falso  
(e) Verdadero

### Explicación:

1. **Interpretación del Problema**: El problema presenta tres ecuaciones con tres incógnitas que representan los precios de tres tipos de frutas en diferentes combinaciones.
2. **Formulación de un Sistema de Ecuaciones Lineales**: Se forma un sistema de ecuaciones lineales basado en la información dada.
3. **Solución del Sistema**: Se resuelve el sistema utilizando un método de eliminación, dando como resultado los valores de \( x_1 \), \( x_2 \), y \( x_3 \).
4. **Cálculo Final**: Se suman los tres valores obtenidos para encontrar el precio total de la cuarta cesta de frutas, que es 528.
