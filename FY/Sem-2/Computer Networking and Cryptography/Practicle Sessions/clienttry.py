import socket
import threading

server=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server.bind(("127.0.0.1",5000))
server.listen(1)

print("waiting for client")
conn,addr=server.accept()
print("Connected to:",addr)

def recieve():
        while True:
            msg=conn.recv(1024).decode()
            print("\nClient:",msg)
            if msg.lower()=="exit":
                break
def send():
    while True:
        reply=input("Server:")
        conn.send(reply.encode())
        if reply.lower()=="exit":
            break

threading.Thread(target=recieve).start()
threading.Thread(target=send).start()
