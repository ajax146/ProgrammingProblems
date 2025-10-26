# Problem 69A: Young Physicist
# https://codeforces.com/contest/69/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

n = int(input())
vectors = [0,0,0]

for _ in range(0,n):
    vector = list(map(int, input().split()))
    for index, speed in enumerate(vector):
        vectors[index] += speed

if vectors == [0,0,0]:
    print("YES")
else:
    print("NO")
