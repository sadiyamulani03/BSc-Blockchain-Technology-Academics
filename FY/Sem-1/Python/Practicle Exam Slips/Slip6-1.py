import mysql.connector
conn=mysql.connector.connect(host="localhost",user="root",password="Ilovechocolateof03",database="TY")
cursor=conn.cursor()
eno=int(input("Enetr a ENo"))
sal=int(input("Enetr a Sal"))
sql="update Emp set sal=%s where eno=%s"
values=(sal,eno)
cursor.execute(sql,values)
print("Record is Updated")
cursor.execute("select * from Emp")
for row in cursor.fetchall():
    print(row)
