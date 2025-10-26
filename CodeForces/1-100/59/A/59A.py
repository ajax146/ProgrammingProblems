# Problem 59A: Word
# https://codeforces.com/contest/59/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

in_str = input()

upper = 0
lower = 0

for char in in_str:
    if char.isupper():
        upper += 1
    else:
        lower += 1

if upper > lower:
    print(in_str.upper())
else:
    print(in_str.lower())
