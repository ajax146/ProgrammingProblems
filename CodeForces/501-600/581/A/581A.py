# Problem 581A: Vasya the Hipster
# https://codeforces.com/contest/581/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

import math

red, blue = map(int, input().split())

max_days = math.floor((red+blue) / 2)

both = math.floor((abs(red-blue))/2)


print(f"{max_days - both} {both}")
