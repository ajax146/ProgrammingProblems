# Problem 112A: Petya and Strings
# https://codeforces.com/contest/112/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

string_1 = input().lower()
string_2 = input().lower()

if string_2 > string_1:
    print(-1)
elif string_2 < string_1:
    print(1)
else:
    print(0)
