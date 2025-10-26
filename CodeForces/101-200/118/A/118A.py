# Problem 118A: String Task
# https://codeforces.com/contest/118/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 26th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

string = str(input())

string = string.lower()

new_string = ""

for character in string:
    if character in ["a","e","i","o","u","y"]:
        continue
    new_string += f".{character}"

print(new_string)
