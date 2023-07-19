from pylatex import Document, TikZ, Axis, Plot, NoEscape

# Crear un nuevo documento
doc = Document()

# Crear una figura con un diagrama de dispersión
with doc.create(TikZ()):
    # Crear un eje de coordenadas y un diagrama de dispersión
    with doc.create(Axis(options='height=8cm, width=8cm', xlabel=NoEscape(r'$x$'), ylabel=NoEscape(r'$y$'))):
        with doc.create(Plot(name='data', coordinates=[(1, 1), (2, 2), (3, 1), (4, 2)], options='only marks, mark size=2pt')):
            pass
    
# Guardar el documento en un archivo PDF
doc.generate_pdf('ejemplo_tikz_3', clean_tex=False)

