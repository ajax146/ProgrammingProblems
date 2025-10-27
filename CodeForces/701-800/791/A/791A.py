# Problem 791A: Bear and Big Brother
# https://codeforces.com/contest/791/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 23rd, 2025
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

limak, bob = map(int, input().split())
year = 1
while True:
    limak *= 3
    bob *= 2
    if limak > bob:
        print(year)
        break
    else:
        year += 1
