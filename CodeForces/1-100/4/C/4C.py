# Problem 4C: Registration System
# https://codeforces.com/contest/4/problem/C
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

history = {}
usernames = int(input())
for _ in range(0,usernames):
    username = str(input())
    if username in history:
        print(f"{username}{history[username]}")
        history[username] += 1
    else:
        print("OK")
        history[username] = 1
