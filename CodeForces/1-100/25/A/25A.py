# Problem 25A: IQ Test
# https://codeforces.com/contest/25/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 28th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

_ = int(input())
all_nums = list(map(int, input().split()))
even_nums = [num for num in all_nums if num % 2 == 0]
odd_nums = [num for num in all_nums if num % 2 == 1]

if len(even_nums) == 1:
    print(all_nums.index(even_nums[0])+1)
else:
    print(all_nums.index(odd_nums[0])+1)
