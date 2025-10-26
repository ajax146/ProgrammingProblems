# Problem 158A: Next Round
# https://codeforces.com/contest/158/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: June 14th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

parameters = list(map(int, input().split()))
participants = list(map(int, input().split()))
modified_participants = [check for check in participants if check > 0]
if parameters[1] > len(modified_participants):
    print(len(modified_participants))
else:
    print((len(participants) - 1 - participants[::-1].index(participants[parameters[1]-1])) + 1)
