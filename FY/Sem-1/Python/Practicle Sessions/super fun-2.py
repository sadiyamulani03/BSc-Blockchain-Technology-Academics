class A:
    def __init__(self,ename):
        self.ename=ename
    def disp(self):
        print("e is",self.ename)
class B(A):
    def __init__(self,ename,sal):
        super().__init__(ename)
        self.sal=sal
    def disp(self):
        super().disp()
        print("s",self.sal)
obj=B("sadi",15274579)
obj.disp()
