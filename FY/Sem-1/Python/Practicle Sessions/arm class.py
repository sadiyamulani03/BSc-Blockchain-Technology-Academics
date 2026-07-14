class Arm():
    def __init__(self,n):
        self.n=n
    def chk(self):
        s=0
        m=self.n
        while self.n>0:
            k=self.n%10
            self.n=self.n//10
            s=s+k*k*k
        if m==s:
            print(m,"A")
        else:
            print(m,"NA")
        
n=int(input("EN"))
obj=Arm(n)
obj.chk()
