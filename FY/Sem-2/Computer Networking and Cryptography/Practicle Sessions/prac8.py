def generate_key_matrix(key):
key = key.upper().replace("J", "I") # Treat J as I
seen = []
# Add key characters first (no duplicates)
for ch in key:
if ch.isalpha() and ch not in seen:
seen.append(ch)
# Fill remaining letters of alphabet
for ch in "ABCDEFGHIKLMNOPQRSTUVWXYZ": # No J
if ch not in seen:
seen.append(ch)
# Build 5x5 matrix
matrix = [seen[i*5:(i+1)*5] for i in range(5)]
return matrix
def get_position(matrix, char):
"""Return (row, col) of a character in the matrix."""
for i, row in enumerate(matrix):
if char in row:
return i, row.index(char)
return None
def prepare_plaintext(text):
"""
Prepare plaintext:
- Uppercase and remove non-alpha
- Replace J with I
- Split into digraphs (pairs), inserting 'X' between same-letter pairs
- Pad with 'X' if odd length
"""
text = text.upper().replace("J", "I")
text = "".join(ch for ch in text if ch.isalpha())
pairs = []
i = 0
while i < len(text):
a = text[i]
if i + 1 == len(text):
# Last single character — pad with X
pairs.append((a, 'X'))
i += 1
elif text[i] == text[i+1]:
# Same letter pair — insert X
pairs.append((a, 'X'))
i += 1
else:
pairs.append((a, text[i+1]))
i += 2
return pairs
def encrypt_pair(matrix, a, b):
"""Encrypt a digraph (pair of letters) using Playfair rules."""
r1, c1 = get_position(matrix, a)
r2, c2 = get_position(matrix, b)
if r1 == r2:
# Same row — shift right
return matrix[r1][(c1+1) % 5] + matrix[r2][(c2+1) % 5]
elif c1 == c2:
# Same column — shift down
return matrix[(r1+1) % 5][c1] + matrix[(r2+1) % 5][c2]
else:
# Rectangle — swap columns
return matrix[r1][c2] + matrix[r2][c1]
def decrypt_pair(matrix, a, b):
"""Decrypt a digraph (pair of letters) using Playfair rules."""
r1, c1 = get_position(matrix, a)
r2, c2 = get_position(matrix, b)
if r1 == r2:
# Same row — shift left
return matrix[r1][(c1-1) % 5] + matrix[r2][(c2-1) % 5]
elif c1 == c2:
# Same column — shift up
return matrix[(r1-1) % 5][c1] + matrix[(r2-1) % 5][c2]
else:
# Rectangle — swap columns (same as encrypt)
return matrix[r1][c2] + matrix[r2][c1]
def encrypt(plaintext, key):
"""Encrypt plaintext using Playfair Cipher."""
matrix = generate_key_matrix(key)
pairs = prepare_plaintext(plaintext)
ciphertext = ""
for a, b in pairs:
ciphertext += encrypt_pair(matrix, a, b)
return ciphertext
def decrypt(ciphertext, key):
"""Decrypt ciphertext using Playfair Cipher."""
matrix = generate_key_matrix(key)
# Split ciphertext into pairs
ciphertext = ciphertext.upper().replace("J", "I")
pairs = [(ciphertext[i], ciphertext[i+1]) for i in range(0,
len(ciphertext), 2)]
plaintext = ""
for a, b in pairs:
plaintext += decrypt_pair(matrix, a, b)
return plaintext
def print_matrix(matrix):
"""Display the 5x5 key matrix."""
print("\n Playfair Key Matrix:")
print(" +" + "---+"*5)
for row in matrix:
print(" | " + " | ".join(row) + " |")
print(" +" + "---+"*5)
# ============================================================
# MAIN PROGRAM
# ============================================================
if __name__ == "__main__":
print("=" * 50)
print(" PLAYFAIR CIPHER PROGRAM")
print("=" * 50)
# ---------- Input ----------
key = input("\nEnter the Key : ").strip()
plaintext = input("Enter Plain Text : ").strip()
# ---------- Show Matrix ----------
matrix = generate_key_matrix(key)
print_matrix(matrix)
# ---------- Encrypt ----------
encrypted = encrypt(plaintext, key)
print(f"\n Plain Text : {plaintext.upper()}")
print(f" Cipher Text : {encrypted}")
# ---------- Decrypt ----------
decrypted = decrypt(encrypted, key)
print(f" Decrypted : {decrypted}")
print("\n" + "=" * 50)