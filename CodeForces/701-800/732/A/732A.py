# Problem 732A: Buy a Shovel
# https://codeforces.com/contest/732/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

cost, coin = map(int, input().split())

testing_amount = 1

while True:
    if cost*testing_amount % 10 == 0 or ((cost*testing_amount)-coin) % 10 == 0:
        print(testing_amount)
        break
    testing_amount += 1

