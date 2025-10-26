# Problem 1154A: Restoring Three Numbers
# https://codeforces.com/contest/1154/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

board = sorted(list(map(int, input().split())))

print(f"{board[3]-board[2]} {board[3]-board[1]} {board[3]-board[0]}")
