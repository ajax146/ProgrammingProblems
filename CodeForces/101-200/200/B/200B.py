# Problem 200B: Drinks
# https://codeforces.com/contest/200/problem/B
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

drink_count = int(input())
drinks = list(map(int, input().split()))

print((float(sum(drinks)/(drink_count*100)))*100)
