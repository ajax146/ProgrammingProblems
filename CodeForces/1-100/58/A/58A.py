# Problem 58A: Chat room
# https://codeforces.com/contest/58/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

string = str(input())
hello_string = "hello"
looking_for = 0

for character in string:
    if character == hello_string[looking_for]:
        looking_for += 1
    
    if looking_for == 5:
        break

if looking_for == 5:
    print("YES")
else:
    print("NO")
