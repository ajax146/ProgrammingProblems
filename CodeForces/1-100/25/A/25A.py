_ = int(input())
all_nums = list(map(int, input().split()))
even_nums = [num for num in all_nums if num % 2 == 0]
odd_nums = [num for num in all_nums if num % 2 == 1]

if len(even_nums) == 1:
    print(all_nums.index(even_nums[0])+1)
else:
    print(all_nums.index(odd_nums[0])+1)
