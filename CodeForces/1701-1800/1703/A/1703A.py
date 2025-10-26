# Problem 1703A: YES or YES?
# https://codeforces.com/contest/1703/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0,runs):
    if str(input()).lower() == "yes":
        print("YES")
    else:
        print("NO")
