# -*- coding: utf-8 -*-
# Programa que recibe una lista de numeros y calcula la suma de los mismos

# Clase que contiene el metodo que calcula la suma de los numeros
class calculator_class:

# metodo que calcula la suma de los numeros
    def sum(self):
        numeros = []  # Lista en la que se agregan los numeros
        suma = 0  # Variable que almacena la suma de los numeros
        respuesta = 1  # Variable de control del ciclo while
        #Ciclo que agrega los numeros en la lista llamada numeros
        while(respuesta == 1):
            num = (int(input("Ingresa un numero ")))
            numeros.append(num)
            respuesta = (input("Hay mas numeros que agregar? 1=si 2=no "))
        # Ciclo que realiza la sumatoria de los numeros
        for i in numeros:
            suma += i
        print(suma)
# Se instancia la clase calculator_class y se manda a llamar el metodo sum
calculadora = calculator_class()
calculadora.sum()
