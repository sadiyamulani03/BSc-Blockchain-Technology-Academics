class Emp():
    def __init__(self,name,sal):
        self.name=name
        self.sal=sal

    def disp(self):
        print("Emp name is:", self.name)
        print("Emp Sal is:",self.sal)

name=input("Enter Emp Name:")
sal=int(input("Enter Emp Sal:"))

obj=Emp(name,sal)
obj.disp()
