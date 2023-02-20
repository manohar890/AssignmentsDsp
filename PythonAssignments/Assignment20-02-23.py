def longestVowelSubsequence (s):
    l=['a','e','i','o','u']
    s=list(s)
    j=0
    for i in range(len(l)):
        while j < len(s):
            if(l[i]==s[j]):
                j=j+1
            elif i+1 < len(l) and l[i+1]==s[j]:
                break
            else:
                s.remove(s[j])
    if len(set(s))==5:
        print(len(s))
    else:
        print(0)
longestVowelSubsequence(input())
    