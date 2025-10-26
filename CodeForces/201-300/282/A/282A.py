# Problem 282A: Bit++
# https://codeforces.com/contest/282/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

operations = int(input())
running_sum = 0
for _ in range(operations):
    running_operation = str(input())
    if "++" in running_operation:
        running_sum += 1
    else:
        running_sum -= 1
print(running_sum)
