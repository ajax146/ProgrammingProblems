# Problem 61A: Ultra-Fast Mathematician
# https://codeforces.com/contest/61/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

num1 = str(input())
num2 = str(input())

ans = ""
for index in range(0, len(num1)):
    if num1[index] == num2[index]:
        ans = ans + "0"
    else:
        ans = ans + "1"

print(ans)
