from abc import ABC , abstractmethod
class shape(ABC):
    @abstractmethod
    def area(self,r):
        pass
class Cir(shape):
    def __init__ (self,r):
        self.r=r
    def area(self):
        a=2*3.14*self.r*self.r
        print("area of cir is ",a)

r=int(input("Enter a r"))
obj=Cir(r)
obj.area()
