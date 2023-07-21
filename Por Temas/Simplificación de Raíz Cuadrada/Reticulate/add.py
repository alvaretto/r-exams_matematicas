from tikz import *

# define coordinates as a list of tuples
coords = [(0, 0), (0, 2), (1, 3.25), (2, 2), (2, 0), (0, 2), (2, 2), (0, 0), (2, 0)]

# create `Picture` object
pic = Picture()
# draw a line following the coordinates
pic.draw(line(coords), thick=True, rounded_corners='4pt')
pic.draw(line(coords), thick=True, rounded_corners='4pt')
