def optimalPoint(magic,dist):
    if sum(dist) > sum(magic):
        return -1
    p=0
    s=len(magic)
    for i in range(s):
        if(magic[i]>=dist[i]):
            p=i
            total=0
            k=i
            for j in range(len(magic)):
                if(total < 0): 
                    p=-1
                    break
                total+=magic[(k%s)]-dist[k%s]
                k=k+1                    
            if p!= -1:
                return p
            
print("Enter n Value:")
n=int(input())
magic=[]
dist=[]
print("Enter magics:")
for i in range(n):
    s=int(input())
    magic.append(s)
print("Enter Distances:")
for j in range(n):
    s=int(input())
    dist.append(s)

print("Optimal POint:=", optimalPoint(magic,dist))

            
        
    