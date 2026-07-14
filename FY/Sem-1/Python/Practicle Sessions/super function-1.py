class A:
    def disp(self):
        print("base")
class B(A):
    def disp(self):
        super().disp()
        print("D")
obj=B()
obj.disp()
