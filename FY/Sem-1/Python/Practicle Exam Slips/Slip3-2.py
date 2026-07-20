class Addr:
    def __init__(self,addr,cid):
        self.addr=addr
        super().__init__(dname)
class Dep:
    def __init__(self,cid):
        self.cid=cid
class Clg(Addr,Dep):
    def __init__(self,addr,cid,cname):
        self.cname=cname
    def disp(self):
        print(addr, " " ,cid," " ,cname)
addr=input("e")
cid=input("d ")
cname=input("c")
obj=Clg(addr,cid,cname)
obj.disp()
