w: int = int(input())

for i in range(0, w):
    numbers: list[int] = list(map(int, input().split()))
    numbers.sort()
    if numbers[0] + numbers[1] == numbers[2]:
        print("YES")
    else:
        print("NO")
