import re
patt="^[0-9]{10}"
data=input("E PC")
x=re.search(patt,data)
if x:
    print("V")
else:
    print("NV")
