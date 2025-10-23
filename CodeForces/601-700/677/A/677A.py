friends, max_height = map(int, input().split())
heights = list(map(int, input().split()))

ans = 0

for person in heights:
    ans += 1
    if person > max_height:
        ans += 1

print(ans)
