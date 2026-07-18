from abc import ABC,abstractmethod
class Shape(ABC):
    @abstractmethod
    def area(self,h,b):
        pass
class Tri(Shape):
    def __init__(self,h,b):
        self.h=h
        self.b=b
    def area(self):
        a=0.5*self.h*self.b
        print("Area of Tri is",a)

h=int(input("Enter a Height"))
b=int(input("Enter a Base"))
obj=Tri(h,b)
obj.area()
