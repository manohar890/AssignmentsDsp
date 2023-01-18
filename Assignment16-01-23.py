# the function takes two arguments one is list of values and target value
# returns index of two numbers,where sum of two different values eqauls target value. 

def func1(lis,target):
  for i in lis:
    for j in lis:
      if i != j and i + j == target:
        return [lis.index(i),lis.index(j)]
  return "No items matched"
  
  print([2,7,11,15],9)
  
  #output
  #[0,1]
