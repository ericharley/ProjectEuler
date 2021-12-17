n = 1000
t = 0
for i in range(n / 3 + 1):
 t = t + 3*i
for i in range(n / 5):
 t = t + 5*i
for i in range(n / 15 + 1):
 t = t - 15*i

print t
