class Emp:
    def __init__(self,ename,dname):
        self.ename=ename
        super().__init__(dname)
class Dep:
    def __init__(self,dname):
        self.dname=dname
class Clg(Emp,Dep):
    def __init__(self,ename,dname,cname):
        self.cname=cname
    def disp(self):
        print(ename, " " ,dname," " ,cname)
ename=input("e")
dname=input("d ")
cname=input("c")
obj=Clg(ename,dname,cname)
obj.disp()
