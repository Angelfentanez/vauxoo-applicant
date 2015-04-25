# -*- coding: utf-8 -*-


from calculator import calculator_class  # Se importa la clase calculator_class

# Clase calculator_test hereda lo contenido en la clase
# calculator_class
class calculator_test(calculator_class):

    def calculator(self):  # Metodo que captura los numeros ingresados

        # Variable que indica la cantidad de numeros que el usuario ingresara
        centinela = int(input("Escriba la cantidad de numeros que ingresara "))
        numeros = []  # Lista en la que se almacenan los numeros ingresados
        contador = 0  # Variable de control para llenar la lista de variables
        # Ciclo para insertar los numeros ingresados en la lista numeros
        while (contador <= centinela - 1):
            number = input("Ingrese un numero ")
            numeros.append(number)
            contador = contador + 1
        suma = calculator_class()  # Instancia de la clase calculator_class
        suma.sum(numeros)  # Llamada al metodo sum que suma todos los numeros
calculadora = calculator_test()  # Instancia de la clase calculator_test
calculadora.calculator()  # Llamada al metodo que recibe los numeros ingresados
