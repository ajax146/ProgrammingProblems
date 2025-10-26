# Problem 80A: Panoramix's Prediction
# https://codeforces.com/contest/80/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53]

left, right = map(int, input().split())
if left in primes and right == primes[primes.index(left)+1]:
    print("YES")
else:
    print("NO")
