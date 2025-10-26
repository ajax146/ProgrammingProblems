# Problem 4A: Watermelon
# https://codeforces.com/contest/4/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 21st, 2025
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

w: int = int(input())

if w > 2 and w % 2 == 0:
    print("YES")
else:
    print("NO")
