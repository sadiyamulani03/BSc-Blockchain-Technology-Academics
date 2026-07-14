class Perf():
    def chk(self,n):
        self.n=n
        s=0
        for i in range(1,self.n):
            if self.n%i==0:
                s=s+i
        if s==self.n:
            print("P")
        else:
            print("NP")
n=int(input("E"))
obj=Perf()
obj.chk(n)
