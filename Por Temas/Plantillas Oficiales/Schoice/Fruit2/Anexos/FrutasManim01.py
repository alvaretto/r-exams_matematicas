from manim import *

class FrutasManim(Scene):
    def construct(self):

        # Texto permanente en la esquina superior izquierda
        corner_text_top = Text("I. E. Pedacito de Cielo | Proyecto Saber ICFES", font_size=15).to_corner(UP+LEFT)
        self.add(corner_text_top)
        
        # Texto permanente en la esquina inferior derecha
        corner_text_bottom = Text("Alvaretto", font_size=18).to_corner(DOWN+RIGHT)
        self.add(corner_text_bottom)

        # Introducción al problema
        intro = Text("Sistema de Ecuaciones Lineales. Método de Sustitución.").to_edge(UP).scale(0.5).shift(DOWN*0.5)
        self.play(Write(intro))
        self.wait(1)

        # 1. Presentación de las ecuaciones
        titulo = Text('Estas son nuestras tres ecuaciones:').scale(0.5).next_to(intro, DOWN)

        self.play(Write(titulo))
        self.wait(1) # Pausa aquí

        # Crear las ecuaciones y reducir su tamaño
        eq1 = MathTex("2P + B = 772").scale(0.8)
        eq2 = MathTex("2P + N = 811").scale(0.8)
        eq3 = MathTex("2B + N = 105").scale(0.8)

        # Crear las celdas con líneas más delgadas
        cell_width = 3
        cell_height = 1
        cell1 = Rectangle(width=cell_width, height=cell_height, stroke_width=0.5).next_to(corner_text_top, 8*DOWN).align_to(corner_text_top, LEFT)
        cell2 = Rectangle(width=cell_width, height=cell_height, stroke_width=0.5).next_to(cell1, 2*DOWN).align_to(cell1, LEFT)
        cell3 = Rectangle(width=cell_width, height=cell_height, stroke_width=0.5).next_to(cell2, 2*DOWN).align_to(cell2, LEFT)

        # Posicionar las ecuaciones dentro de las celdas
        eq1.move_to(cell1.get_center())
        eq2.move_to(cell2.get_center())
        eq3.move_to(cell3.get_center())

        # Mostrar en escena
        self.play(Write(cell1), Write(eq1), Write(cell2), Write(eq2), Write(cell3), Write(eq3))
        self.wait(1)

        # Dibujar una flecha desde la primera ecuación apuntando hacia la derecha
        arrow_start = eq1.get_right() + RIGHT*0.5
        arrow_end = arrow_start + RIGHT*2.5
        arrow1 = Arrow(arrow_start, arrow_end, buff=0)
        
        # Creando el texto "Ecuación 1"
        equation_label = Text("Ecuación 1", font_size=20).next_to(arrow1, RIGHT)
        
        # Animando la flecha y el texto
        self.play(GrowArrow(arrow1), Write(equation_label))
        self.wait(1)

        # Dibujar una flecha desde la segunda ecuación apuntando hacia la derecha
        arrow_start = eq2.get_right() + RIGHT*0.5
        arrow_end = arrow_start + RIGHT*2.5
        arrow2 = Arrow(arrow_start, arrow_end, buff=0)
        
        # Creando el texto "Ecuación 2"
        equation_label2 = Text("Ecuación 2", font_size=20).next_to(arrow2, RIGHT)
        
        # Animando la flecha y el texto
        self.play(GrowArrow(arrow2), Write(equation_label2))
        self.wait(1)

        # Dibujar una flecha desde la tercera ecuación apuntando hacia la derecha
        arrow_start = eq3.get_right() + RIGHT*0.5
        arrow_end = arrow_start + RIGHT*2.5
        arrow3 = Arrow(arrow_start, arrow_end, buff=0)
        
        # Creando el texto "Ecuación 3"
        equation_label3 = Text("Ecuación 3", font_size=20).next_to(arrow3, RIGHT)
        
        # Animando la flecha y el texto
        self.play(GrowArrow(arrow3), Write(equation_label3))
        self.wait(1)
        
        # Desvanecer las últimas flechas y textos
        self.play(FadeOut(titulo), FadeOut(arrow1), FadeOut(arrow2), FadeOut(arrow3), FadeOut(equation_label), FadeOut(equation_label2), FadeOut(equation_label3))

        # Paso 1: elige una ecuación para resolver una de las incógnitas        
        # Cambiar el color de cell1 a blanco y eq1 a negro
        self.play(cell1.animate.set_fill(WHITE, opacity=1.0), eq1.animate.set_color(BLACK))
        step_title = Text("Paso 1: Elegir una ecuación para despejar una de las incógnitas", font_size=20).to_edge(RIGHT+UP).shift(DOWN*2.5)
        step_content = Text("Vamos a elegir la primera ecuación: 2P + B = 772, para despejar B", font_size=20).next_to(step_title, DOWN).align_to(step_title, LEFT)
        
        self.play(Write(step_title), Write(step_content))
        self.wait(2)
        self.play(FadeOut(step_title), FadeOut(step_content))
    
        # Paso 2: Despejar B
        # Retornar el color de cell1 a negro y eq1 a blanco
        self.play(cell1.animate.set_fill(BLACK, opacity=1.0), eq1.animate.set_color(WHITE))
        step_title2 = Text("Paso 2: Despejar B", font_size=20).to_edge(UP).to_edge(RIGHT, buff=7).shift(DOWN*2.5)
        self.play(Write(step_title2))
        self.wait(1)

        step_content2 = Text("Para despejar B, vamos a restar 2P de ambos lados", font_size=20).next_to(step_title2, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content2))
        self.wait(1)

        step_content3 = Text("de la ecuación. Dando como resultado: B = 772 - 2P", font_size=20).next_to(step_content2, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content3))
        self.wait(1)

        step_content4 = Text("Ahora, tenemos una expresión para B en términos de P", font_size=20).next_to(step_content3, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content4))

        #self.play(Write(step_title2), Write(step_content2), Write(step_content3), Write(step_content4))
        self.wait(1)   
        self.play(FadeOut(step_title2), FadeOut(step_content2), FadeOut(step_content3), FadeOut(step_content4))

        # Paso 3: Sustituir B en otra ecuación
        step_title3 = Text("Paso 3: Sustituir B en otra ecuación", font_size=20).to_edge(UP).shift(DOWN*2.5).align_to(step_title2)
        self.play(Write(step_title3))
        self.wait(1)

        step_content6 = Text("Vamos a sustituir la expresión que encontramos para B en la", font_size=20).next_to(step_title3, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content6))
        self.wait(1)

        step_content7 = Text("tercera ecuación: 2B + N = 105", font_size=20).next_to(step_content6, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content7))
        self.wait(1)

        step_content8 = Text("Dando como resultado: 2(772 - 2P) + N = 105", font_size=20).next_to(step_content7, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content8))

        step_content9 = Text("Expandimos y simplificamos: 1544 - 4P + N = 105", font_size=20).next_to(step_content8, DOWN).align_to(step_title3, LEFT)
        self.play(Write(step_content9))

        #self.play(Write(step_title3), Write(step_content6), Write(step_content7), Write(step_content8), Write(step_content9))
        self.wait(1) 
        self.play(FadeOut(step_title3), FadeOut(step_content6), FadeOut(step_content7), FadeOut(step_content8), FadeOut(step_content9))

        # Paso 4: Despejar N
        step_title4 = Text("Paso 4: Despejar N", font_size=20).to_edge(UP).shift(DOWN*2.5).align_to(step_title2).to_edge(LEFT, buff=4.5)
        self.play(Write(step_title4))
        self.wait(1)

        step_content9 = Text("Para despejar N, sumamos 4P y restamos 1544 de ambos lados:", font_size=20).next_to(step_title4, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content9))
        self.wait(1)

        step_content10 = Text("N = 105 + 4P - 1544", font_size=20).next_to(step_content9, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content10))
        self.wait(1)

        step_content11 = Text("N = 4P - 1439", font_size=20).next_to(step_content10, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content11))

        self.wait(1) 
        self.play(FadeOut(step_title4), FadeOut(step_content9), FadeOut(step_content10), FadeOut(step_content11))

        # Paso 5: Sustituir N en otra ecuación
        step_title5 = Text("Paso 5: Sustituir N en otra ecuación", font_size=20).to_edge(UP).shift(DOWN*2.5).align_to(step_title2)
        self.play(Write(step_title5))
        self.wait(1)

        step_content12 = Text("Ahora, vamos a sustituir la expresión que encontramos para N en", font_size=20).next_to(step_title3, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content12))
        self.wait(1)

        step_content13 = Text("la segunda ecuación 2P + N = 811:", font_size=20).next_to(step_content12, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content13))
        self.wait(1)

        step_content14 = Text("2P + 4P - 1439 = 811", font_size=20).next_to(step_content13, DOWN).align_to(step_title2, LEFT)
        self.play(Write(step_content14))

        step_content15 = Text("Sumamos los términos semejantes: 6P = 2250", font_size=20).next_to(step_content14, DOWN).align_to(step_title3, LEFT)
        self.play(Write(step_content15))

        step_content16 = Text("Dividimos ambos lados por 6: P = 375", font_size=20).next_to(step_content15, DOWN).align_to(step_title3, LEFT)
        self.play(Write(step_content16))

        self.wait(1) 
        self.play(FadeOut(step_title5), FadeOut(step_content12), FadeOut(step_content13), FadeOut(step_content14), FadeOut(step_content15), FadeOut(step_content16), FadeOut(eq1), FadeOut(cell1))
        
        # Reemplazando B en la ecuación 1
        eq4 = MathTex("2(375) + B = 772").scale(0.8)
        eq5 = MathTex("750 + B = 772").scale(0.8)
        eq6 = MathTex("B = 772 - 750").scale(0.8)
        eq7 = MathTex("B = 22").scale(0.8)
        cell_width = 4
        cell_height = 1
        cell4 = Rectangle(width=cell_width, height=cell_height, stroke_width=0.5).next_to(corner_text_top, 8*DOWN).align_to(corner_text_top, LEFT)
        eq4.move_to(cell4.get_center())
        self.play(Write(cell4), Write(eq4))
        self.wait(1)
        self.play(FadeOut(eq4))

        eq5.move_to(cell4.get_center())
        self.play(Write(eq5))
        self.wait(1)
        self.play(FadeOut(eq5))

        eq6.move_to(cell4.get_center())
        self.play(Write(eq6))
        self.wait(1)
        self.play(FadeOut(eq6))

        eq7.move_to(cell4.get_center())
        self.play(Write(eq7))
        self.play(FadeOut(eq3))
        self.wait(1)

        # Reemplazando N en la ecuación 3
        self.play(FadeOut(cell3))
        eq15 = MathTex("2(22) + N = 105").scale(0.8)
        eq13 = MathTex("44 + N = 105").scale(0.8)
        eq14 = MathTex("N = 105 - 44").scale(0.8)
        eq16 = MathTex("N = 61").scale(0.8)
        cell_width2 = 4
        cell_height2 = 1
        cell6 = Rectangle(width=cell_width2, height=cell_height2, stroke_width=0.5).next_to(cell2, 2*DOWN).align_to(cell2, LEFT)

        eq15.move_to(cell6.get_center())
        self.play(Write(cell6), Write(eq15))
        self.play(FadeOut(eq15))
        self.wait(1)

        eq13.move_to(cell6.get_center())
        self.play(Write(eq13))
        self.wait(1)
        self.play(FadeOut(eq13))

        eq14.move_to(cell6.get_center())
        self.play(Write(eq14))
        self.wait(1)
        self.play(FadeOut(eq14))

        eq16.move_to(cell6.get_center())
        self.play(Write(eq16))
        self.play(FadeOut(eq2))
        self.wait(1)

        # Reemplazando P en la ecuación 2
        self.play(FadeOut(cell2))
        eq8 = MathTex("2P + 61 = 811").scale(0.8)
        eq9 = MathTex("2P = 811 - 61").scale(0.8)
        eq10 = MathTex("2P = 750").scale(0.8)
        eq11 = MathTex("P = 375").scale(0.8)
        cell_width2 = 4
        cell_height2 = 1
        cell5 = Rectangle(width=cell_width2, height=cell_height2, stroke_width=0.5).next_to(cell4, 2*DOWN).align_to(cell4, LEFT)

        eq8.move_to(cell5.get_center())
        self.play(Write(cell5), Write(eq8))
        self.play(FadeOut(eq8))
        self.wait(1)

        eq9.move_to(cell5.get_center())
        self.play(Write(eq9))
        self.wait(1)
        self.play(FadeOut(eq9))

        eq10.move_to(cell5.get_center())
        self.play(Write(eq10))
        self.wait(1)
        self.play(FadeOut(eq10))

        eq11.move_to(cell5.get_center())
        self.play(Write(eq11))
        self.wait(1)
        self.play(FadeOut(eq11))

        # Move 'cell4' to the center of the screen, in the same row as 'cell1', and insert 'eq7' centered on 'cell4'
        cell4.move_to(ORIGIN).align_to(cell1, UP)
        eq7.move_to(cell4.get_center())
        self.play(Write(cell4), Write(eq7))
        self.wait(1)

        # Move 'cell5' to the center of the screen, in the same row as 'cell2', and insert 'eq11' centered on 'cell5'
        cell5.move_to(ORIGIN).align_to(cell2, UP)
        eq11.move_to(cell5.get_center())
        self.play(Write(cell5), Write(eq11))
        self.wait(1)

        # Move 'cell6' to the center of the screen, in the same row as 'cell1', and insert 'eq16' centered on 'cell6'
        cell6.move_to(ORIGIN).align_to(cell3, UP)
        eq16.move_to(cell6.get_center())
        self.play(Write(cell6), Write(eq16))
        self.wait(1)
    


    