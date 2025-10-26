# Problem 1692A: Marathon
# https://codeforces.com/contest/1692/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0,runs):
    places = list(map(int, input().split()))
    ahead = 0
    if places[1] > places[0]:
        ahead += 1
    if places[2] > places[0]:
        ahead += 1
    if places[3] > places[0]:
        ahead += 1
    print(ahead)
