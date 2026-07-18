class A:
    def disp(self):
        print("Base class")
class B(A):
    def disp(self):
        super().disp()
        print("Derive class")
obj=B()
obj.disp()
