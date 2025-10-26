# Problem 1A: Theatre Square
# https://codeforces.com/contest/1/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

import math

length, width, tile_size = str(input()).split()

print(math.ceil(int(length)/int(tile_size)) * math.ceil(int(width)/int(tile_size)))
