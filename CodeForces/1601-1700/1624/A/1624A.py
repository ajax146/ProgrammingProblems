# Problem 1624A: Plus One on the Subset
# https://codeforces.com/contest/1624/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())

for _ in range(0,runs):
    arr_size = int(input())
    vals = sorted(list(map(int, input().split())))
    print(vals[arr_size-1] - vals[0])
