# Problem 1283A: Minutes Before the New Year
# https://codeforces.com/contest/1283/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0,runs):
    ans = 0
    hours, minutes = map(int, input().split())
    hours += 1
    ans += 60-minutes
    ans += (24-hours)*60
    print(ans)
