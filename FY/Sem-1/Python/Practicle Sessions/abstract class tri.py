from abc import ABC , abstractmethod
class shape(ABC):
    @abstractmethod
    def area(self,h,b):
        pass
class tri(shape):
    def __init__ (self,h,b):
        self.h=h
        self.b=b
    def area(self):
        a=0.5*self.h*self.b
        print("area of tri is ",a)

h=int(input("Enter a h"))
b=int(input("Enter a b"))
obj=tri(h,b)
obj.area()
