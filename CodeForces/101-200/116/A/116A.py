stops = int(input())

max_capacity = 0
current_capacity = 0

for _ in range(0,stops):
    off,on = map(int, input().split())
    current_capacity += on-off
    max_capacity = max(current_capacity, max_capacity)
print(max_capacity)
