# (a + b + c)^2 = (10^3)^2
# a^2 + b^2 + c^2 + 2(ab + bc + ac) = 10^6 
# adding a^2 + b^2 - c^2 = 0
# a^2 + b^2 + ab + bc + ac + ab = 5*10^5 + ab
# a^2 + b^2 + 2*ab + bc + ac
# (a + b)^2 + c*(b + a) = 5*10^5 + ab
# (a + b)(a + b + c) = 5*10^5 + a b
# (a + b)*1000 = 5*10^5 + a b
for b in range(1,1000):
 a = (1000.0*(b - 500.0))/(b - 1000.0)
 if a == int(a):
  print int(a * b * (1000 - a - b))
  break
