# Problem 785A: Anton and Polyhedrons
# https://codeforces.com/contest/785/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

lookup_table = {
    "Tetrahedron": 4,
    "Cube": 6,
    "Octahedron": 8,
    "Dodecahedron": 12,
    "Icosahedron": 20
}

runs = int(input())
sum = 0
for _ in range(0,runs):
    sum += lookup_table[input()]
print(sum)
