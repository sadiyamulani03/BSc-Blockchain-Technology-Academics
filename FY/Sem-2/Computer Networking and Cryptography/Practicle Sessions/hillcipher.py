# Fixed 2x2 Key Matrix
key = [[3, 3],
       [2, 5]]

# ---- ENCRYPT ----
def encrypt(text):
    text = text.upper()
    text = text.replace(" ", "")  # Remove spaces

    # Pad with X if odd length
    if len(text) % 2 != 0:
        text += "X"

    result = ""

    # Take 2 letters at a time
    for i in range(0, len(text), 2):
        a = ord(text[i])   - ord('A')   # Convert letter to number
        b = ord(text[i+1]) - ord('A')

        # Matrix multiplication
        c1 = (key[0][0] * a + key[0][1] * b) % 26
        c2 = (key[1][0] * a + key[1][1] * b) % 26

        result += chr(c1 + ord('A'))    # Convert number back to letter
        result += chr(c2 + ord('A'))

    return result


# ---- DECRYPT ----
def decrypt(text):
    # Inverse of key matrix mod 26
    # For key = [[3,3],[2,5]], inverse is [[15,17],[20,9]]
    inv_key = [[15, 17],
               [20,  9]]

    result = ""

    for i in range(0, len(text), 2):
        a = ord(text[i])   - ord('A')
        b = ord(text[i+1]) - ord('A')

        c1 = (inv_key[0][0] * a + inv_key[0][1] * b) % 26
        c2 = (inv_key[1][0] * a + inv_key[1][1] * b) % 26

        result += chr(c1 + ord('A'))
        result += chr(c2 + ord('A'))

    return result


# ---- MAIN ----
text = input("Enter Plain Text : ")

encrypted = encrypt(text)
decrypted = decrypt(encrypted)

print("Plain Text  :", text.upper())
print("Cipher Text :", encrypted)
print("Decrypted   :", decrypted)
