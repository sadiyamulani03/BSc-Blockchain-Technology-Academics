class A:
    def __init__(self,ename):
        self.ename=ename
    def disp(self):
        print("Emp name is ",self.ename)
class B(A):
    def __init__(self,ename,sal):
        super().__init__(ename)
        self.sal=sal
    def disp(self):
        super().disp()
        print("Emp sal is",self.sal)

obj=B("Sadiya",600000)
obj.disp()
