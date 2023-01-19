'''Write a function:

def solution(N)

that, given a positive integer N, returns the length of 
its longest binary gap. The function should
return 0 if N doesn't contain a binary gap.*/'''

def Solution(n):
    l=[]
    while n>0:
        k=n%2
        l.append(k)
        n=n//2
    count=0
    res=0
    lis=[]
    print(l[::-1])
    for i in l[::-1]:
        if i == 1 and len(lis)==0:
            lis.append(i)
        if i==1 and len(lis)>0:
            res=max(res,count)
            count=0
        if i == 0 and len(lis)>=1:
            count = count + 1
    return res
print(Solution(99))  
            
            
        
            