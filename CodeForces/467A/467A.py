room_count = int(input())
ans = 0
for _ in range(0,room_count):
    cur,max = map(int, input().split())
    if max-cur >= 2:
        ans += 1
print(ans)
