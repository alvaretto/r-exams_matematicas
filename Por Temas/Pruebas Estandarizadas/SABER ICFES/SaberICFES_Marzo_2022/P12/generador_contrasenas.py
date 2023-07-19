#!/usr/bin/env python
# coding: utf-8

import random
import string

class GeneradorContrasenas:
    def __init__(self):
        self.nivel_seguridad = {
            range(0, 3): "muy bajo",
            range(3, 6): "bajo",
            range(6, 9): "medio",
            range(9, 11): "alto",
            range(11, 13): "muy alto"
        }
    
    # Condición 01. La contraseña debe tener al menos 8 caracteres:
    def condicion01(self, contrasena):
        if len(contrasena) >= 8:
            return 1
        else:
            return 0
        
    # Condición 02. Debe tener símbolos:
    def condicion02(self, contrasena):
        simbolos = '!@#$%^&*()_+-=[]{};:,.<>?~'
        num_simbolos = sum(1 for caracter in contrasena if caracter in simbolos)
        return int(num_simbolos >= 2)

    # Condición 03. La contraseña debe tener números:
    def condicion03(self, contrasena):
        digitos = set('0123456789')
        cantidad_digitos = sum(1 for caracter in contrasena if caracter in digitos)
        if cantidad_digitos < 2:
            return 0
        elif cantidad_digitos >= 2:
            return 1
        else:
            return 0

    # Condición 04. La contraseña debe tener letras:
    def condicion04(self, contrasena):
        if len([caracter for caracter in contrasena if caracter.isalpha()]) < 2:
            return 0
        else:
            return 1
        
    # Condición 05. Los símbolos iguales no deben estar seguidos:
    def condicion05(self, contrasena):
        simbolos = set("!@#$%^&*()_+-=[]{};:,.<>?~")

        # 1. Si la contraseña no tiene símbolos, retorna 0 y aborta el script.
        if not any(char in simbolos for char in contrasena):
            return 0

        # 2. Si la contraseña no tiene símbolos iguales, retorna 0 y aborta el script.
        simbolos_iguales = [char for char in simbolos if contrasena.count(char) > 1]
        if not simbolos_iguales:
            return 0

        # 3. Si la contraseña tiene símbolos iguales y están uno al lado del otro, retorna 0. Aborta script.
        for i in range(len(contrasena) - 1):
            if contrasena[i] in simbolos_iguales and contrasena[i] == contrasena[i + 1]:
                return 0

        # 4. Si la contraseña tiene símbolos iguales, pero están separadas entre sí por uno o más caracteres,
        # retorna 1 y continúas buscando.
        return 1

    # Condición 06. Los números iguales no deben estar seguidos:
    def condicion06(self, contrasena):
        if not any(char.isdigit() for char in contrasena):
            return 0

        digitos_iguales = []
        for char in contrasena:
            if char.isdigit() and contrasena.count(char) > 1:
                digitos_iguales.append(char)

        if not digitos_iguales:
            return 0

        for i in range(len(contrasena) - 1):
            if contrasena[i].isdigit() and contrasena[i] == contrasena[i + 1] and contrasena[i] in digitos_iguales:
                return 0

        return 1

    # Condición 07. Evitar números consecutivos seguidos:
    def condicion07(self, contrasena):
        # 1. Si la contraseña no tiene más de un dígito, retorna 0 y aborta el script.
        digit_count = sum(char.isdigit() for char in contrasena)
        if digit_count <= 1:
            return 0

        # 2. Si la contraseña no tiene dígitos consecutivos, retorna 0 y aborta el script.
        has_consecutive_digits = any(
            contrasena[i].isdigit() and contrasena[i + 1].isdigit()
            and abs(int(contrasena[i]) - int(contrasena[i + 1])) == 1
            for i in range(len(contrasena) - 1)
        )
        if not has_consecutive_digits:
            return 0

        # 3. Si la contraseña tiene dígitos consecutivos y están uno al lado del otro, retorna 0. Aborta script.
        for i in range(len(contrasena) - 1):
            if (
                contrasena[i].isdigit()
                and contrasena[i + 1].isdigit()
                and abs(int(contrasena[i]) - int(contrasena[i + 1])) == 1
            ):
                return 0

        # 4. Si la contraseña tiene dígitos consecutivos, pero están separados entre sí por uno o más caracteres,
        # retorna 1 y continúas buscando.
        return 1

    # Condición 08. La contraseña no debe tener sólo números:
    def condicion08(self, contrasena):
        digitos = set('0123456789')
        solo_numeros = contrasena.isdigit()
        cantidad_digitos = sum(caracter in digitos for caracter in contrasena)
        tiene_caracteres = any(caracter.isalpha() for caracter in contrasena)

        if solo_numeros or cantidad_digitos < 2:
            return 0
        elif cantidad_digitos >= 2 and tiene_caracteres:
            return 1
        else:
            return 0
        
    # Condición 09. No sólo MAYÚSCULAS:
    def condicion09(self, contrasena):
        if contrasena.isupper() or contrasena.islower():
            return 0
        elif any(letra.isupper() for letra in contrasena) and any(letra.islower() for letra in contrasena):
            if sum(letra.isupper() for letra in contrasena) < 2:
                return 0
            else:
                return 1
        else:
            return 0
        
    # Condición 10. No sólo minúsculas:
    def condicion10(self, contrasena):
        if contrasena.isupper() or contrasena.islower():
            return 0
        elif any(letra.isupper() for letra in contrasena) and any(letra.islower() for letra in contrasena):
            if sum(letra.isupper() for letra in contrasena) < 2 or sum(letra.islower() for letra in contrasena) < 2:
                return 0
            else:
                return 1
        else:
            return 0
    
    # Condición 11. No tiene letras iguales consecutivas:
    def condicion11(self, contrasena):
        if not any(char.isalpha() for char in contrasena):
            return 0

        letras_iguales = []
        for char in contrasena:
            if char.isalpha() and contrasena.count(char) > 1:
                letras_iguales.append(char)

        if not letras_iguales:
            return 0

        for i in range(len(contrasena) - 1):
            if contrasena[i] == contrasena[i + 1] and contrasena[i] in letras_iguales:
                return 0

        return 1

    # Condición 12. Evitar colocar letras consecutivas seguidas:
    def condicion12(self, contrasena):
        # 1. Si la contraseña no tiene más de una letra, retorna 0 y aborta el script.
        letter_count = sum(char.isalpha() for char in contrasena)
        if letter_count <= 1:
            return 0

        # Encuentra los índices de todas las letras en la contraseña
        letter_indices = [i for i, char in enumerate(contrasena) if char.isalpha()]

        # 2. Verifica si hay letras consecutivas en la contraseña, sin importar su posición
        has_consecutive_letters = any(
            abs(ord(contrasena[i]) - ord(contrasena[j])) == 1
            for i in letter_indices
            for j in letter_indices
            if i != j
        )
        if not has_consecutive_letters:
            return 0

        # 3. Si la contraseña tiene letras consecutivas y están una al lado de la otra, retorna 0. Aborta script.
        for i in range(len(contrasena) - 1):
            if (
                contrasena[i].isalpha()
                and contrasena[i + 1].isalpha()
                and abs(ord(contrasena[i]) - ord(contrasena[i + 1])) == 1
            ):
                return 0

        # 4. Si la contraseña tiene letras consecutivas, pero están separadas entre sí por uno o más caracteres,
        # retorna 1 y continúas buscando.
            return 1        

    def evaluar_contrasena(self, contrasena):
        total = self.condicion12(contrasena) + \
                self.condicion11(contrasena) + \
                self.condicion10(contrasena) + \
                self.condicion09(contrasena) + \
                self.condicion08(contrasena) + \
                self.condicion07(contrasena) + \
                self.condicion06(contrasena) + \
                self.condicion05(contrasena) + \
                self.condicion04(contrasena) + \
                self.condicion03(contrasena) + \
                self.condicion02(contrasena) + \
                self.condicion01(contrasena)
        for rango, nivel in self.nivel_seguridad.items():
            if total in rango:
                nivel_de_seguridad = nivel
                break
        return {
            "contrasena": contrasena,
            "total": total,
            "nivel_de_seguridad": nivel_de_seguridad
        }

    def generate_random_password(self, size=10):
        chars = string.ascii_letters + string.digits + string.punctuation
        return ''.join(random.choice(chars) for _ in range(size))

    def generar_contrasena(self, nivel_de_seguridad_deseado):
        while True:
            contrasena = self.generate_random_password()
            detalles_contrasena = self.evaluar_contrasena(contrasena)

            # Verifica si el nivel de seguridad actual es el deseado
            if detalles_contrasena["nivel_de_seguridad"] == nivel_de_seguridad_deseado:
                break

        # Devuelve los detalles de la contraseña para su posterior uso
        return detalles_contrasena
       

