def gcd(a, b):
 while b != 0:
  t = b
  b = a % b
  a = t
 return a

def lcm(num1, num2):
  result = num1*num2/gcd(num1,num2)
  return result

nums = range(1,21)
while len(nums) > 1:
  a = nums.pop()
  b = nums.pop()
  nums.append( lcm(a,b) )

print nums[0]

# reduce (lcm, range(1,21))
