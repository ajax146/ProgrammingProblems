# Problem 271A: Beautiful Year
# https://codeforces.com/contest/271/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

year = int(input())

while True:
    year += 1
    nums = {int(digit) for digit in str(year)}
    if len(nums) == 4:
        print(year)
        break
