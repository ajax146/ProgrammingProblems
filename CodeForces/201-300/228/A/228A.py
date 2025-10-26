# Problem 228A: Is your horseshoe on the other hoof?
# https://codeforces.com/contest/228/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

colors = set(map(int, input().split()))
print(4-len(colors))
