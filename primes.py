"""
This program receives a number as input
and determines if it's prime or not
"""


class PrimeClass(object):
    """
    Class that contains
    the method named "is_prime"
    """

    def is_prime(self, NUM_INT):  # pylint: disable=C0103
        """
        This method uses the variable NUM_INT which contains an int number and
        prints True if that number is prime, otherwise it prints False
        """
        count = 0  # Control variable
        for numb in range(1, NUM_INT + 1):
            # The variable numb takes the values between 1 and the given number
            if NUM_INT % numb == 0:
                # If the result of dividing the number between the values
                # of numb is not a float number then count increases by one
                count = count + 1
        if count == 2:
            # If count equals 2 then it is a prime number
            # so the program will return True, else it will return False
            return True
        else:
            return False

NUM_INT = 5  # pylint: disable=C0103
# Number given to the method is_prime
print PrimeClass.is_prime(PrimeClass(), NUM_INT)
# Prints the result returned by the method is_prime
