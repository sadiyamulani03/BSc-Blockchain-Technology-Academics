import mysql.connector
conn=mysql.connector.connect(host="localhost",user="root",password="Ilovechocolateof03",database="TY")
cursor=conn.cursor()
eno=int(input("Enetr a ENo"))
cursor.execute("delete from Emp where eno=%s",(eno,))
print("Record is Deleted")
cursor.execute("select * from Emp")
for row in cursor.fetchall():
    print(row)
