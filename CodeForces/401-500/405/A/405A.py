# Problem 405A: Gravity Flip
# https://codeforces.com/contest/405/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

rows = int(input())
heights = sorted(list(map(int, input().split())))
print(" ".join(str(num) for num in heights))
