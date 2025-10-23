people = int(input())

for _ in range(0,people):
    rating = int(input())
    if rating >= 1900:
        print("Division 1")
    elif rating >= 1600:
        print("Division 2")
    elif rating >= 1400:
        print("Division 3")
    else:
        print("Division 4")
