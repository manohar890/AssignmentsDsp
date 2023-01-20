'''Write a function solution that, given two integers A and B, 
returns a string containing exactly A letters 'a' and exactly B letters 'b' 
with no three consecutive letters being the 
same (in other words, neither "aaa" nor "bbb" may occur in the returned string).'''

def solution(A,B):
    res = ""
    while A>0 or B>0:
        if A<0 or B<0:
            res="not Posiible"
            break
        if A >= B and res[-2:] != 'aa':
            res+='a'
            A-=1
        elif res[-2:] == "aa":
            res += "b"
            B -= 1
        elif res[-2:] == "bb":
            res += "a"
            A -= 1
        elif B>A and res[-2:]!='bb':
            res += "b"
            B -= 1    
    return res
print(solution(8,3))