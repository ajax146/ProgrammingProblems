# Problem 1950A: Stair, Peak, or Neither?
# https://codeforces.com/contest/1950/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 28th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0, runs):
    nums = list(map(int, input().split()))
    if nums[0] < nums[1]:
        if nums[1] < nums[2]:
            print("STAIR")
        elif nums[1] > nums[2]:
            print("PEAK")
        else:
            print("NONE")
    else:
        print("NONE")
