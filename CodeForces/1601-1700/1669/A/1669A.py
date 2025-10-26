# Problem 1669A: Division?
# https://codeforces.com/contest/1669/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

people = int(input())

for _ in range(0,people):
    rating = int(input())
    if rating >= 1900:
        print("Division 1")
    elif rating >= 1600:
        print("Division 2")
    elif rating >= 1400:
        print("Division 3")
    else:
        print("Division 4")
