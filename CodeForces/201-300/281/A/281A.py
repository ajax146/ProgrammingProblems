# Problem 281A: Word Capitalization
# https://codeforces.com/contest/281/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

string = str(input())
print(f"{string[0].capitalize()}{string[1:]}")
