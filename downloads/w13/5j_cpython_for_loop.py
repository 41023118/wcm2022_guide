import random
data = []
for i in range(1, 10, 2):
    data.append(i)
    #print(i)
print(data)
random.shuffle(data)
print(data)