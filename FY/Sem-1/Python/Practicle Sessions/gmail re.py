import re
patt="^[a-z]+[a-z A-Z 0-9 . _ ! $ %]*\@[a-z]{5}\.[a-z]{3}"
em=input("Enter a email")
x=re.search(patt,em)
if x:
    print("valid")
else:
    print("Invalid")
