# Problem 236A: Boy or Girl
# https://codeforces.com/contest/236/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

username = str(input())
used_chars: set[str] = set()

for character in username:
    used_chars.add(character)

if len(used_chars) % 2 == 0:
    print("CHAT WITH HER!")
else:
    print("IGNORE HIM!")
