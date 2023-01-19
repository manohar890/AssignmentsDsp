

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


def maxoftriplet2(lis):
    res = 0
    for i in range (len(lis)):
        for j in range(i+1,len(lis)):
            for k in range(j+1,len(lis)):
                if res < lis[i]*lis[j]*lis[k]:
                    res=lis[i]*lis[j]*lis[k]
    return res
print(maxoftriplet2([3,1,2,22,5,6]))


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
