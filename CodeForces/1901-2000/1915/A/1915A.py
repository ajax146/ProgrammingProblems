# Problem 1915A: Odd One Out
# https://codeforces.com/contest/1915/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0,runs):
    frequency_map = {}
    input_nums = list(map(int, input().split()))
    for num in input_nums:
        if num in frequency_map:
            frequency_map[num] += 1
        else:
            frequency_map[num] = 1
    for index, (key, value) in enumerate(frequency_map.items()):
        if value == 1:
            print(key)
