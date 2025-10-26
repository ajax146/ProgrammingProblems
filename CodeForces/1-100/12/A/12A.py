# Problem 12A: Super Agent
# https://codeforces.com/contest/12/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: October 24th, 2025
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

input_str = input() + input() + input()

if input_str[0] == input_str[8] and input_str[1] == input_str[7] and input_str[2] == input_str[6] and input_str[3] == input_str[5]:
    print("YES")
else:
    print("NO")
