from collections import Counter

name1, name2, all_letters = input(), input(), input()

full_names: Counter[str] = Counter()
full_names.update([char for char in name1+name2])

hit = False

for char in all_letters:
    if char in full_names:
        full_names.subtract(char)
        full_names =+ full_names
    else:
        print("NO")
        hit = True
        break

if len(full_names) == 0 and not hit:
    print("YES")
elif not hit:
    print("NO")
