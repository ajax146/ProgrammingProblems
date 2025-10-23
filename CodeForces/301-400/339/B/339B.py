houses, tasks = map(int, input().split())
moves = list(map(int, input().split()))

current_location = 1
current_moves = 0

for move in moves:
    # Need to circle around
    if current_location > move:
        current_moves += houses-current_location
        current_moves += move
    else:
        current_moves += move-current_location
    current_location = move

print(current_moves)
