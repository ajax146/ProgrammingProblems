# Problem 50A: Domino piling
# https://codeforces.com/contest/50/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

import math

parameters = list(map(int, input().split()))

if parameters[0] % 2 == 0:
    print(math.floor(parameters[0]/2) * parameters[1])
else:
    print((math.floor(parameters[0]/2) * parameters[1]) + math.floor(parameters[1]/2))
