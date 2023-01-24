"""Given an input string (s) and a pattern (p), 
implement wildcard pattern matching with support for '?' and '*' 
where:
    '?' Matches any single character.
    '*' Matches any sequence of characters (including the empty sequence).
    The matching should cover the entire input string (not partial)."""

def Pattern_Matching(p,s):
    if '*' not in p and len(p) != len(s):
        return False
    for i  in range(len(s)):
        if p[i] !="*" and p[i]!='?' and p[i]!=s[i]:
            return False
        
        if p[i] == '*':
            if i != len(p)-1:
                for j in range(i+1,len(s)):
                    if p[i+1]== s[j] or p[i+1]=='*' or p[i+1]=='?':
                        i=j
                        break
            return True
        else:
            continue
    return True
print(Pattern_Matching('?b','cb'))
     