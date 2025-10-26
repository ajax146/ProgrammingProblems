# Problem 1742A: Plus or Minus
# https://codeforces.com/contest/1742/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 22nd, 2025
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

w: int = int(input())

for i in range(0, w):
    numbers: list[int] = list(map(int, input().split()))
    numbers.sort()
    if numbers[0] + numbers[1] == numbers[2]:
        print("YES")
    else:
        print("NO")
