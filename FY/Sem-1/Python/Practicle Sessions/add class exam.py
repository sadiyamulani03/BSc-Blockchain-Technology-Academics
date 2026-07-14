class Add:
    def add(self,a,b):
        self.a=a
        self.b=b
        print (self.a+self.b)
a=int(input("Enter a Number"))
b=int(input("Enter a Number"))
obj=Add()
obj.add(a,b)
