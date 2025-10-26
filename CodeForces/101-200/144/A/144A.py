# Problem 144A: Arrival of the General
# https://codeforces.com/contest/144/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

sol = int(input())
heights = list(map(int, input().split()))
max_index = 0
min_index = 0
for index, height in enumerate(heights):
    if height > heights[max_index]:
        max_index = index
    elif height < heights[min_index]:
        min_index = index
    elif height == heights[min_index]:
        min_index = index

ans = max_index
ans += len(heights)-1-min_index

if max_index > min_index:
    ans -= 1
print(ans)
