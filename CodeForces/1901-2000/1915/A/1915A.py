runs = int(input())
for _ in range(0,runs):
    frequency_map = {}
    input_nums = list(map(int, input().split()))
    for num in input_nums:
        if num in frequency_map:
            frequency_map[num] += 1
        else:
            frequency_map[num] = 1
    for index, (key, value) in enumerate(frequency_map.items()):
        if value == 1:
            print(key)
