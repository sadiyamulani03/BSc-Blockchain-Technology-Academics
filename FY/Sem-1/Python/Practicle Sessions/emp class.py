class Emp():
    def disp(self,eno,ename,sal):
        self.eno=eno
        self.ename=ename
        self.sal=sal
        print(self.eno,self.ename,self.sal)
eno=int(input("E EN"))
ename=input("E ENAME")
sal=input("SAL")
obj=Emp()
obj.disp(eno,ename,sal)
