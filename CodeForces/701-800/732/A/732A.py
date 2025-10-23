cost, coin = map(int, input().split())

testing_amount = 1

while True:
    if cost*testing_amount % 10 == 0 or ((cost*testing_amount)-coin) % 10 == 0:
        print(testing_amount)
        break
    testing_amount += 1

