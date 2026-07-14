import socket
import threading

HOST = "127.0.0.1"   # same PC
PORT = 5050          # safer port

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((HOST, PORT))
server.listen()

clients = []
usernames = []

print("Server running on 127.0.0.1:5050")

def broadcast(message):
    for client in clients:
        try:
            client.send(message)
        except:
            remove_client(client)

def remove_client(client):
    if client in clients:
        index = clients.index(client)
        username = usernames[index]

        print(f"{username} disconnected")

        clients.remove(client)
        usernames.remove(username)

        broadcast(f"{username} left the chat".encode("utf-8"))
        client.close()

def handle_client(client):
    while True:
        try:
            message = client.recv(1024)
            if not message:
                raise Exception()
            broadcast(message)
        except:
            remove_client(client)
            break

def receive():
    while True:
        client, addr = server.accept()
        print(f"🔗 Connected: {addr}")

        client.send("USERNAME".encode("utf-8"))
        username = client.recv(1024).decode("utf-8")

        usernames.append(username)
        clients.append(client)

        print(f"{username} joined")

        broadcast(f"{username} joined the chat".encode("utf-8"))

        thread = threading.Thread(target=handle_client, args=(client,), daemon=True)
        thread.start()

receive()