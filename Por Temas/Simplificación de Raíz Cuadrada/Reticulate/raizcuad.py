import sympy
import random 
nrand1 = random.randint(2, 200)
nrand2 = random.randint(1, 200)
if (nrand2 != nrand1) & (nrand2<nrand1):
  inc2 = sympy.sqrt(nrand2)
  inc2b = sympy.root(nrand2,2)
  pyu = [inc2,inc2b]
  inc =random.sample(pyu,1)
print('$' + sympy.printing.latex(inc) + '$')
