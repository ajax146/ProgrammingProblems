# Problem 116A: Tram
# https://codeforces.com/contest/116/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

stops = int(input())

max_capacity = 0
current_capacity = 0

for _ in range(0,stops):
    off,on = map(int, input().split())
    current_capacity += on-off
    max_capacity = max(current_capacity, max_capacity)
print(max_capacity)
