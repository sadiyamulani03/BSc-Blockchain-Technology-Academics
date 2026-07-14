import socket

def encrypt(msg):
    return ''.join(chr(ord(c)+3) for c in msg)

def sender():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    s.connect(("127.0.0.1", 5050))

    msg = input("Enter message: ")

    print("\n--- OSI Layers (Sender Side) ---")

    # Application Layer
    enc_msg = encrypt(msg)
    print("Application Layer (Encrypted):", enc_msg)

    # Transport Layer
    transport_data = f"PORT:5050|{enc_msg}"
    print("Transport Layer:", transport_data)

    # Network Layer
    network_data = f"IP:127.0.0.1|{transport_data}"
    print("Network Layer:", network_data)

    # Data Link Layer
    datalink_data = f"MAC:00:1A:2B:3C:4D:5E|{network_data}"
    print("Data Link Layer:", datalink_data)

    # Physical Layer (bits)
    bits = ' '.join(format(ord(i), '08b') for i in datalink_data)
    print("Physical Layer (Bits):", bits)

    print("\n📡 Sending data using TCP (Reliable Communication)...")

    s.send(datalink_data.encode())

    s.close()

sender()