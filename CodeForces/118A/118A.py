string = str(input())

string = string.lower()

new_string = ""

for character in string:
    if character in ["a","e","i","o","u","y"]:
        continue
    new_string += f".{character}"

print(new_string)
