import re
patt="^[0-9]{10}"
data=input("enter MOB no.")
x=re.search(patt,data)
if x:
    print("v")
else:
    print("nV")
