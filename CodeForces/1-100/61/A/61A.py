num1 = str(input())
num2 = str(input())

ans = ""
for index in range(0, len(num1)):
    if num1[index] == num2[index]:
        ans = ans + "0"
    else:
        ans = ans + "1"

print(ans)
