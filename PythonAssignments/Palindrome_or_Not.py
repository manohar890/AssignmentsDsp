'''Given an integer x, return true if x is a

palindrome

, and false otherwise.'''

#without Conversion
def Palindrome(n):
    if n < 0:
        return False
    else:
        l=n
        res=0
        while n >0:
            k = n% 10
            res = (res*10)+k
            n=n//10
    if res == l:
        return True
    else: return False
print(Palindrome(121))


#with Conversion
def Palindeome(input1):
    if str(input1)==str(input1)[::-1]:
        return True
    else:
        return False
print(Palindeome(-121))