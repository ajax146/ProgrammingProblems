tickets = int(input())
for _ in range(0,tickets):
    ticket = [int(char) for char in str(input())]
    if sum(ticket[:3]) == sum(ticket[3:]):
        print("YES")
    else:
        print("NO")
