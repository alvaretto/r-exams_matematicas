import subprocess
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

# Nombre del archivo .tex que deseas compilar
texfile = 'conRetro.tex'

# Compila el archivo .tex y genera un archivo de imagen
subprocess.call(['pdflatex', '-interaction', 'nonstopmode', texfile])
subprocess.call(['convert', '-density', '300', texfile[:-4]+'.pdf', '-quality', '90', texfile[:-4]+'.png'])

# Lee la imagen generada en Matplotlib y muéstrala
img = mpimg.imread(texfile[:-4]+'.png')
plt.imshow(img)
plt.axis('off')
plt.show()


