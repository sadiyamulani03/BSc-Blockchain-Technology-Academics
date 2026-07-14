# OSI and TCP/IP Data Transfer Simulation

data = input("Enter message to send: ")

print("\n--- Sender Side (Encapsulation) ---")

layers = ["Application", "Presentation", "Session",
          "Transport", "Network", "Data Link", "Physical"]

for layer in layers:
    data = "[" + layer + "] " + data
    print(layer, "Layer processed data:", data)

print("\nData transmitted through medium...\n")

print("--- Receiver Side (Decapsulation) ---")

for layer in reversed(layers):
    print(layer, "Layer received data:", data)
    data = data.replace("[" + layer + "] ", "")

print("\nFinal message received:", data)
