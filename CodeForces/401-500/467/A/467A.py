# Problem 467A: George and Accommodation
# https://codeforces.com/contest/467/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

room_count = int(input())
ans = 0
for _ in range(0,room_count):
    cur,max = map(int, input().split())
    if max-cur >= 2:
        ans += 1
print(ans)
