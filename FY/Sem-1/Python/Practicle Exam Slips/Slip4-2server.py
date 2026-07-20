import socket
server=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server.bind(("localhost",12345))
server.listen(1)
print("Server is waiting")
conn,addr=server.accept()

while True:
    msg=(conn.recv(1024)).decode()
    if msg=="exit":
        break
    else:
        print("client: ",msg)
        smsg=input("server:")
        conn.send(smsg.encode())
        
