# Problem 96A: Football
# https://codeforces.com/contest/96/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

string = str(input())
if "0000000" in string or "1111111" in string:
    print("YES")
else:
    print("NO")
