# -*- coding: utf-8 -*-
# Programa que recibe un numero y verifica si es un numero primo

# Clase que contiene el metodo para verificar si el numero dado es primo
class prime_class:

    def is_prime(self):  # Metodo llamado is_prime

        # Variable que contiene el numero dado, en caso que sea un numero
        # real ignora todos los numeros despues del punto decimal
        numero = int(input("Ingrese un numero entero "))

        # Contador que indica el numero de veces que una division dio como
        # resultado un residuo igual a cero
        n = 0

        # Ciclo en el que se divide el numero dado entre todos los numeros de
        # uno a n
        for i in range(1, numero + 1):  # i toma los valores de 1..n
            if(numero % i == 0):  # Si el residuo de la division es igual a 0
                n = n + 1         # el contador aunmenta

        # Si el resultado que contiene el contador es diferente a cero,
        # entonces no es un numero real, por lo que imprime False, de lo
        # contrario imprime True
        if(n != 2):
            print (False)
        else:
            print (True)

# Se instancia la clase prime_class y se manda a llamar el metodo is_prime
primo = prime_class()
primo.is_prime()
