import socket

def decrypt(msg):
    return ''.join(chr(ord(c)-3) for c in msg)

def receiver():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
    # Prevent port already in use error
    s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    
    s.bind(("127.0.0.1", 5050))
    s.listen(1)

    print("🔵 Receiver waiting for connection...\n")

    conn, addr = s.accept()
    print("✅ Connected to:", addr)

    data = conn.recv(4096).decode()

    print("\n--- OSI Layers (Receiver Side) ---")

    # Data Link Layer
    print("Data Link Layer:", data)
    data = data.split("|", 1)[1]

    # Network Layer
    print("Network Layer:", data)
    data = data.split("|", 1)[1]

    # Transport Layer
    print("Transport Layer:", data)
    data = data.split("|", 1)[1]

    # Application Layer
    print("Application Layer (Encrypted):", data)

    # Decryption
    msg = decrypt(data)
    print("🔓 Decrypted Message:", msg)

    conn.close()
    s.close()

receiver()