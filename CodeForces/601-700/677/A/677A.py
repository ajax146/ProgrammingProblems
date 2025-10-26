# Problem 677A: Vanya and Fence
# https://codeforces.com/contest/677/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

friends, max_height = map(int, input().split())
heights = list(map(int, input().split()))

ans = 0

for person in heights:
    ans += 1
    if person > max_height:
        ans += 1

print(ans)
