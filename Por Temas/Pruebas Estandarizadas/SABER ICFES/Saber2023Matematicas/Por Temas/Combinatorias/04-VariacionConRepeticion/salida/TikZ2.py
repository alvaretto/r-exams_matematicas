import subprocess
import matplotlib.pyplot as plt
from PIL import Image
from io import BytesIO

# Nombre del archivo .tex que deseas compilar
texfile = 'conRetro.tex'

# Compila el archivo .tex y genera un archivo de imagen
subprocess.call(['pdflatex', '-interaction', 'nonstopmode', texfile])
img_data = subprocess.check_output(['convert', '-density', '300', texfile[:-4]+'.pdf', '-quality', '90', 'png:-'])

# Lee la imagen generada en Pillow y muéstrala en Matplotlib
img = Image.open(BytesIO(img_data))
plt.imshow(img)
plt.axis('off')
plt.show()
