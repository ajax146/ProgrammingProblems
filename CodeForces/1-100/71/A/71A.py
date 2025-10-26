# Problem 71A: Way Too Long Words
# https://codeforces.com/contest/71/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

n = int(input())
for run in range(0, n):
    word = input()
    if len(word) <= 10:
        print(word)
        continue
    print(f"{word[0]}{len(word)-2}{word[len(word)-1]}")
