# Problem 41A: Translation
# https://codeforces.com/contest/41/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

str1, str2 = input(), input()

if str1 == str2[::-1]:
    print("YES")
else:
    print("NO")
