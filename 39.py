import math

def gcd(a,b):
  while b:      
    a, b = b, a % b
  return a

def cps(s):
  num_solution = 0
  s2 = s / 2
  mlimit = int(math.ceil(math.sqrt(s2))) - 1
  for m in range(2, mlimit+1):
    if (s2 % m == 0): 
      sm = s2 / m
      while (sm % 2 == 0):
        sm = sm / 2
      if (m % 2 == 1):
        k = m + 2
      else:
        k = m + 1
      while (k < 2*m) and (k <= sm):
        if (sm % k == 0) and (gcd(k,m) == 1):
          d = s2 / (k*m)
          n = k - m
          a = d*(m*m-n*n)
          b = 2*d*m*n
          c = d*(m*m+n*n)
          num_solution = num_solution + 1
#         print (a,b,c)
        k = k + 2
  return num_solution

max_n = 0
max_s = 0
for s in range(1001):
  n = cps(s)
  if n >  max_n :
    max_n = n
    max_s = s
