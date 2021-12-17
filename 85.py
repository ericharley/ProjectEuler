cur_m = 1
cur_n = 1
A = cur_m*(1+ cur_m)*cur_n*(1+ cur_n)
cur_dif = abs(A  - 8000000)

for m in range(100):
 for n in range(100):
  A = m*(1+m)*n*(1+n)
  if ( abs(A  - 8000000) < cur_dif ):
    cur_dif = abs(A  - 8000000)
    cur_m = m
    cur_n = n

(cur_m, cur_n, cur_dif)