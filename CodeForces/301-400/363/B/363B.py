# Problem 363B: Fence
# https://codeforces.com/contest/363/problem/B
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

arr_len, window_len = map(int, input().split())

planks = list(map(int, input().split()))

left_edge = 0
right_edge = window_len-1

running_sum = sum(planks[:window_len])
min_sum_index = 0

min_sum = running_sum

while right_edge <= arr_len-2:
    running_sum -= planks[left_edge]
    left_edge += 1
    right_edge += 1
    running_sum += planks[right_edge]

    if running_sum < min_sum:
        min_sum = running_sum
        min_sum_index = left_edge

print(min_sum_index+1)
