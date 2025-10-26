# Problem 1433A: Boring Apartments
# https://codeforces.com/contest/1433/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 28th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())

len_map = {
    4: 10,
    3: 6,
    2: 3,
    1: 1
}

for _ in range(0,runs):
    apartment = input()
    digits = (int(apartment[0])-1)*10
    digits += len_map[len(apartment)]
    print(digits)
