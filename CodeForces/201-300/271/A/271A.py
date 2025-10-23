year = int(input())

while True:
    year += 1
    nums = {int(digit) for digit in str(year)}
    if len(nums) == 4:
        print(year)
        break
