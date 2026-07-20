class prime():
    def __init__(self, n):
        self.n=n

    def chk(self):
        for i in range (2, self.n+1):
            if self.n%i==0:
                break
        if self.n==i:
            print("It is a prime")
        else:
            print("It is not prime")
n= int(input("Enter No. "))
obj=prime(n)
obj.chk()
