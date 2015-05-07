# -*- coding: utf-8 -*-

"""
Program that receives a list of numbers and
calculates the sum of all those numbers
"""


class CalculatorClass(object):
    """
    Class that contains the method sum
    """

    def sum(self, NUM_LIST):  # pylint: disable=C0103

        """
        Method that uses the variable NUM_LIST which contains a list
        of numbers and returns the sum of those numbers
        """
        suma = 0  # Variable that conatins the sum of the numbers
        for count in NUM_LIST:
            # The variable count takes the each of the values contained in
            # NUM_LIST, sums them one by one and the result of each addition
            # is inserted into the variable suma
            suma += count
        return suma
NUM_LIST = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # pylint: disable=C0103
# Variable containgin the list of numbers
print CalculatorClass.sum(CalculatorClass(), NUM_LIST)
# Prints the result returned by the method sum
