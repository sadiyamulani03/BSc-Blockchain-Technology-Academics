
import mysql.connector
conn=mysql.connector.connect(host="localhost",username="root",password="Ilovechocolateof03",database="sppu")
print("Conected")
cursor=conn.cursor()
Id=int(input("E T ID"))
Tname=input("E N")
subj=input("E S")
sql="insert into Teacher values(%s,%s,%s)"
values=(Id,Tname,subj)
cursor.execute(sql,values)
print("record is added")
cursor.execute("select * from Teacher")
for row in cursor.fetchall():
    print(row)
