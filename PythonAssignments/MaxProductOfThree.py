
'''Write a function:

def solution(A)

that, given a non-empty array A, returns the value of the maximal product of any triplet.

For example, given array A such that:

  A[0] = -3   A[1] = 1   A[2] = 2   A[3] = -2   A[4] = 5   A[5] = 6

the function should return 60, as the product of triplet (2, 4, 5)
is maximal.
'''
#method 1
def maxoftriplet(lis):
    res=0
    for i in lis:
        for j in lis:
            for k in lis:
                if lis.index(i)<lis.index(j)<lis.index(k):
                    if res < i*j*k:
                        res=i*j*k
    return res
print(maxoftriplet([3,1,2,22,5,6]))

#method 2
def maxoftriplet2(lis):
    res = 0
    for i in range (len(lis)):
        for j in range(i+1,len(lis)):
            for k in range(j+1,len(lis)):
                if res < lis[i]*lis[j]*lis[k]:
                    res=lis[i]*lis[j]*lis[k]
    return res
print(maxoftriplet2([3,1,2,22,5,6]))

#method 3
def maxoftriplet3(lis):
    res=0
    for i in range(len(lis)):
        if i+1 <len(lis):
            f=lis[i]*lis[i+1]
            for j in range(i+2,len(lis)):
                if res < f*lis[j]:
                    res=f*lis[j]
    return res
print(maxoftriplet3([3,1,2,22,5,6]))
