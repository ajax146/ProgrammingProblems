input()
scores = list(map(int, input().split()))

high_score = scores[0]
low_score = scores[0]

ans = 0

for score in scores:
    if score > high_score:
        ans += 1
        high_score = score
    elif score < low_score:
        ans += 1
        low_score = score
print(ans)
