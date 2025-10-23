limak, bob = map(int, input().split())
year = 1
while True:
    limak *= 3
    bob *= 2
    if limak > bob:
        print(year)
        break
    else:
        year += 1
