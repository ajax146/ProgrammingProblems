# Problem 492B: Vanya and Lanterns
# https://codeforces.com/contest/492/problem/B
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

num_lanterns, street_size = map(int, input().split())
lanterns = set(map(int, input().split()))
lanterns = sorted(lanterns)

largest_gap = 0

first_lantern = lanterns[0]
last_lantern = street_size - lanterns[len(lanterns)-1]

for index, lantern in enumerate(lanterns):
    if index+1 == len(lanterns):
        break
    diff = lanterns[index+1] - lanterns[index]
    largest_gap = max(largest_gap, diff)


print(max(first_lantern, float(largest_gap)/2, last_lantern))
