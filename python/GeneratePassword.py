import secrets
import string

def generate_password(length=16):
    characters = string.ascii_letters + string.digits + "!@#$%^&*()_-+=[]{}|;:,.<>?"
    password = ''.join(secrets.choice(characters) for _ in range(length))
    return password

print("Password generated with python:", generate_password(16))