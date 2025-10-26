# Problem 1850A: To My Critics
# https://codeforces.com/contest/1850/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0,runs):
    nums = sorted(list(map(int, input().split())))           
    if nums[2] + nums[1] >= 10:
        print("YES")
    else:
        print("NO")
