from Crypto.Cipher import DES
from Crypto.Util.Padding import pad, unpad

# DES requires 8-byte key
key = b'8bytekey'  

# Create DES cipher
cipher = DES.new(key, DES.MODE_CBC)

# Message
message = input("Enter message: ").encode()

# Encrypt
ciphertext = cipher.encrypt(pad(message, DES.block_size))

print("\nEncrypted (bytes):", ciphertext)

# Decrypt
decipher = DES.new(key, DES.MODE_CBC, iv=cipher.iv)
decrypted = unpad(decipher.decrypt(ciphertext), DES.block_size)

print("Decrypted Message:", decrypted.decode())