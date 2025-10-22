# Read input
w: int = int(input())

# Be greedy with the case, 2 cannot be divided into 2 non-zero positive integers, so we have to avoid it.
if w <= 3:
    print("NO")
else:
    print("YES" if w % 2 == 0 else "NO")