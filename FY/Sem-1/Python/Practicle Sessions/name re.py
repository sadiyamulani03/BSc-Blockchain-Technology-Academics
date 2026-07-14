import re
patt="^[A-Za-z]"
data=input("E N")
x=re.search(patt,data)
if x:
    print("V")
else:
    print("NV")
