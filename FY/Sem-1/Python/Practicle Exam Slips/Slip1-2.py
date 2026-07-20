import re
patt="^[A-Z]{5}[0-9]{4}[A-Z]{1}"
data=input("enter pan no.")
x=re.search(patt,data)
if x:
    print("v")
else:
    print("nV")
