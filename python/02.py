s = 0

F0 = 1
F1 = 2


for i in range(100):
 if ( F1 % 2 == 0 ):
  s = s + F1

 t = F1
 F1 = F1 + F0
 F0 = t

 if F1 > 4000000:
  break

print s
