import string

def is_palindrome(n):

 a = str(n)

 if a == a[::-1]:
  return True

 return False

max_p = 0

for a in range(100,1000):
 for b in range(100,1000):
  if (a % 11 != 0) and (b % 11 != 0):
   next
  n = a*b
  if is_palindrome(n) and n > max_p:
    max_p = n

print max_p
