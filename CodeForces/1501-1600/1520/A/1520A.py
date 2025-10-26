# Problem 1520A: Do Not Be Distracted!
# https://codeforces.com/contest/1520/problem/A
# Executed with: Python 3.11.2
# Linux version: Linux kernel 6.1.0-10-amd64
# Submitted on: September 27th, 2024
# Codeforces language used: PyPy 3.10 (7.3.15, 64bit)

runs = int(input())
for _ in range(0,runs):
    size = int(input())
    tasks = input()

    done_tasks: set[str] = set()
    doing_task = tasks[0]

    fail = False

    for task in tasks:
        if task != doing_task:
            if task in done_tasks:
                fail = True
                break
            done_tasks.add(doing_task)
            doing_task = task
    if fail:
        print("NO")
    else:
        print("YES")
