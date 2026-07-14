class Prime():
    def chk(self,n):
        self.n=n

        for i in range(2,self.n+1):
            if self.n%i==0:
                break
        if self.n==i:
            print("P")
        else:
            Print("NP")
n=int(input("E N"))
obj=Prime()
obj.chk(n)
