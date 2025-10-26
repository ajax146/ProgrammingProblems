# Problem 479A: Expression
# https://codeforces.com/contest/479/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 28th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

a,b,c = int(input()),int(input()),int(input())

op1 = a + b + c
op2 = a + b * c
op3 = (a + b) * c
op4 = a * b + c
op5 = a * (b + c)
op6 = a * b * c

print(max(op1,op2,op3,op4,op5,op6))
