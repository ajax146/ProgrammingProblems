# Problem 1367A: George and Accommodation
# https://codeforces.com/contest/1367/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

strings = int(input())

for _ in range(0, strings):
    input_str = input()
    output_str = ""
    for index, char in enumerate(input_str):
        if index == 0 or index == len(input_str)-1:
            output_str += char
        elif index % 2 == 0:
            continue
        elif char == input_str[index+1]:
            output_str += char
        else:
            output_str += char
            output_str += input_str[index+1]
    print(output_str)
