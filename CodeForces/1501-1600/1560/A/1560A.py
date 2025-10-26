# Problem 1560A: Dislike of Threes
# https://codeforces.com/contest/1560/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

def gen_sequence() -> list[int]:
    ans: list[int] = []
    curr_val = 1
    while len(ans) < 1001:
        if curr_val % 3 != 0 and str(curr_val)[len(str(curr_val))-1] != "3":
            ans.append(curr_val)
        curr_val += 1
    return ans

good_nums = gen_sequence()
numbers = int(input())
for _ in range(0,numbers):
    print(good_nums[int(input())-1])

