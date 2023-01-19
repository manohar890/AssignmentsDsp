#Method 1
def solution(n):
  if n % 2 != 0:
    return 0
  res=0
  for i in range(n):
    if n % pow(2,i) = = 0:
      if res < i:
        res=i
  return res
print(solution(24))

#Method 1
def solution2(n):
  if n % 2 != 0:
    return 0
  res=0
  while n % 2 ==0:
    n=n/2
    res+=1
  return res
print(solution(24))
