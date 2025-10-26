# Problem 1676A: Lucky?
# https://codeforces.com/contest/1676/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

tickets = int(input())
for _ in range(0,tickets):
    ticket = [int(char) for char in str(input())]
    if sum(ticket[:3]) == sum(ticket[3:]):
        print("YES")
    else:
        print("NO")
