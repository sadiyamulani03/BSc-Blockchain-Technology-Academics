class Student():
    def disp(self,Rno,Sname,Per):
        self.Rno=Rno
        self.Sname=Sname
        self.Per=Per
        print(self.Rno,self.Sname,self.Per)
Rno=int(input("E RNO"))
Sname=input("E SNAME")
Per=input("Per")
obj=Student()
obj.disp(Rno,Sname,Per)
