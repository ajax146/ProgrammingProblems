rows = int(input())
heights = sorted(list(map(int, input().split())))
print(" ".join(str(num) for num in heights))
