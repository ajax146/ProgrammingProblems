# Problem 472A: Design Tutorial: Learn from Math
# https://codeforces.com/contest/472/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

num = int(input())
if num % 2 == 0:
    print(f"6 {num-6}")
else:
    print(f"9 {num-9}")

