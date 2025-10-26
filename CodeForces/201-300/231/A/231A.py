# Problem 231A: Team
# https://codeforces.com/contest/231/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

problems = int(input())
total_solved = 0
for _ in range(problems):
    input_string = str(input()).split()
    if sum([int(solution) for solution in input_string]) > 1:
        total_solved += 1
print(total_solved)
