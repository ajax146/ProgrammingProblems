def gen_sequence() -> list[int]:
    ans: list[int] = []
    curr_val = 1
    while len(ans) < 1001:
        if curr_val % 3 != 0 and str(curr_val)[len(str(curr_val))-1] != "3":
            ans.append(curr_val)
        curr_val += 1
    return ans

good_nums = gen_sequence()
numbers = int(input())
for _ in range(0,numbers):
    print(good_nums[int(input())-1])

