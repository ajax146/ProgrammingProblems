import math

parameters = list(map(int, input().split()))

if parameters[0] % 2 == 0:
    print(math.floor(parameters[0]/2) * parameters[1])
else:
    print((math.floor(parameters[0]/2) * parameters[1]) + math.floor(parameters[1]/2))
