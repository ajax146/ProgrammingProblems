# Problem 263A: Beautiful Matrix
# https://codeforces.com/contest/263/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

grid = [list(map(int, input().split())),list(map(int, input().split())),list(map(int, input().split())),list(map(int, input().split())),list(map(int, input().split()))]

for row_index, row_value in enumerate(grid):
    for column_index, column_value in enumerate(row_value):
        if column_value == 1:
            # We want 2,2
            print(abs(row_index-2) + abs(column_index-2))
