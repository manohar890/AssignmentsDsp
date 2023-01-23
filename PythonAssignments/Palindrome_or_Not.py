'''Given an integer x, return true if x is a

palindrome

, and false otherwise.'''

def Palindeome(input1):
    if str(input1)==str(input1)[::-1]:
        return True
    else:
        return False
print(Palindeome(-121))