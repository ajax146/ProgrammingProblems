operations = int(input())
running_sum = 0
for _ in range(operations):
    running_operation = str(input())
    if "++" in running_operation:
        running_sum += 1
    else:
        running_sum -= 1
print(running_sum)
