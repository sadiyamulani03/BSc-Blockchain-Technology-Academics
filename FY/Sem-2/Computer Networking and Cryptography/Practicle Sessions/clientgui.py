import socket
import threading
import tkinter as tk
from datetime import datetime

HOST = "127.0.0.1"   # same PC
PORT = 5050

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    client.connect((HOST, PORT))
except:
    print(" Cannot connect to server")
    exit()

username = input("Enter your name: ")

# GUI
window = tk.Tk()
window.title("Live Chat")

chat_area = tk.Text(window, state='disabled', width=50, height=20)
chat_area.pack(padx=10, pady=10)

msg_entry = tk.Entry(window, width=40)
msg_entry.pack(side=tk.LEFT, padx=10)

def update_chat(msg):
    chat_area.config(state='normal')
    chat_area.insert(tk.END, msg + "\n")
    chat_area.config(state='disabled')
    chat_area.yview(tk.END)

def send_message():
    msg = msg_entry.get()
    if msg.strip() == "":
        return

    time = datetime.now().strftime("%H:%M")
    full_msg = f"[{time}] {username}: {msg}"

    try:
        client.send(full_msg.encode("utf-8"))
    except:
        update_chat(" Failed to send")

    msg_entry.delete(0, tk.END)

tk.Button(window, text="Send", command=send_message).pack(side=tk.LEFT)

def receive():
    while True:
        try:
            message = client.recv(1024).decode("utf-8")

            if message == "USERNAME":
                client.send(username.encode("utf-8"))
            else:
                window.after(0, update_chat, message)

        except:
            window.after(0, update_chat, " Disconnected")
            break

threading.Thread(target=receive, daemon=True).start()

window.mainloop()