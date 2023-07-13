#!/usr/bin/python3
"""
Square Class Script
Script that defines a class named Square that represents a square shape.
It provides methods to calculate the area and perimeter of the square.
"""


class Square:
    width = 0
    height = 0

    def __init__(self, *args, **kwargs):
        """ Constructor to initialize the object with given attributes"""
        for key, value in kwargs.items():
            setattr(self, key, value)

    def area_of_my_square(self):
        """Area of the square"""
        return self.width * self.height

    def perimeter_of_my_square(self):
        """Perimeter of the square"""
        return (self.width * 2) + (self.height * 2)

    def __str__(self):
        """String representation of the square"""
        return "{}/{}".format(self.width, self.height)


if __name__ == "__main__":
    """
    Test the square class then
        print the string rep., area and perimeter of the square
    """
    s = Square(width=12, height=9)
    print(s)
    print(s.area_of_my_square())
    print(s.perimeter_of_my_square())
