import socket
import threading

client=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(("127.0.0.1", 5000))

def recieve():
    while True:
        try:
            msg=client.recv(1024).decode()
            print("\nServer:",msg)
            if msg.lower()=="exit":
                break
        except:
            break

def send():
    while True:
        msg=input("You:")
        client.send(msg.encode())
        if msg.lower()=="exit":
            break

threading.Thread(target=recieve).start()
threading.Thread(target=send).start()
