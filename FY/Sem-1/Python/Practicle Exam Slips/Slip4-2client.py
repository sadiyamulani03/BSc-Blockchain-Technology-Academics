import socket
client=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
client.connect(("localhost",12345))

while True:
    msg=input("Client")
    client.send(msg.encode())
    smsg=(client.recv(1024)).decode()
    if smsg=="exit":
        break
    else:
        print("Server: ",smsg)

