# Problem 706B: Interesting drink
# https://codeforces.com/contest/706/problem/B
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

num_shops = int(input())
prices = sorted(list(map(int, input().split())))
days = int(input())

for day in range(0,days):
    toSpend = int(input())
    left = 0
    right = num_shops
    while right > left:
        mid = left + (right - left) // 2
        if prices[mid] <= toSpend:
            left = mid +1
        else:
            right = mid
    
    print(left)
