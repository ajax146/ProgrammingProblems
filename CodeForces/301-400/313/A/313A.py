# Problem 313A: Ilya and Bank Account
# https://codeforces.com/contest/313/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

value = str(input())

print(max(int(value), int(value[:len(value)-1]), int(value[:len(value)-2] + value[len(value)-1])))
