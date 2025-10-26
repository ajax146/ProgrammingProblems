# Problem 155A: I_love_\%username\%
# https://codeforces.com/contest/155/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

input()
scores = list(map(int, input().split()))

high_score = scores[0]
low_score = scores[0]

ans = 0

for score in scores:
    if score > high_score:
        ans += 1
        high_score = score
    elif score < low_score:
        ans += 1
        low_score = score
print(ans)
