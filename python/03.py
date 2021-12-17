from math import *

def primes(n): 
	if n==2: return [2]
	elif n<2: return []
	s=range(3,n+1,2)
	mroot = n ** 0.5
	half=(n+1)/2-1
	i=0
	m=3
	while m <= mroot:
		if s[i]:
			j=(m*m-3)/2
			s[j]=0
			while j<half:
				s[j]=0
				j+=m
		i=i+1
		m=2*i+3
	return [2]+[x for x in s if x]

n = 600851475143
max_p = 1
pr = primes(int(ceil(sqrt(n))))
while n > 1:
 for p in pr:
  if ( n % p == 0 ):
   if p > max_p:
    max_p = p
   n = n / p
 
print max_p
