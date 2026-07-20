import mysql.connector
conn=mysql.connector.connect(host="localhost",user="root",password="Ilovechocolateof03",database="TY")
print("connected")
cursor=conn.cursor()
eno=int(input("enter a eno"))
ename=input("enter a ename")
sal=int(input("enter sal"))
sql="insert into Emp values(%s,%s,%s)"
values=(eno,ename,sal)
cursor.execute(sql,values)
print("record is added")
for row in cursor.fetchall():
    print(row)
