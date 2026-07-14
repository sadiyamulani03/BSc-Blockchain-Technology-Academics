import re
patt="^[0-9]{12}[0-1]*"
an=input("Enter a AN")
x=re.search(patt,an)
if x:
    print("Valid")
else:
    print("Invalid")
