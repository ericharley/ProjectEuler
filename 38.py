def ispandigital(d):
 if ( d < 123456789 or d > 987654321 ):
  return False
 digs = []
 while d:
    digit = d % 10
    digs.insert(0, digit)
    d /= 10
 digs.sort()
 return (digs == [1,2,3,4,5,6,7,8,9])

n = 3
for b in xrange(1,10000):
 e = ''
 for m in range(1,n):
   e = e + "%d" % (b*m)
 if ispandigital(int(e)):
   print e
