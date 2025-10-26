# Problem 339B: Xenia and Ringroad
# https://codeforces.com/contest/339/problem/B
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 22nd, 2025
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

houses, tasks = map(int, input().split())
moves = list(map(int, input().split()))

current_location = 1
current_moves = 0

for move in moves:
    # Need to circle around
    if current_location > move:
        current_moves += houses-current_location
        current_moves += move
    else:
        current_moves += move-current_location
    current_location = move

print(current_moves)
