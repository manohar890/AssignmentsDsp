

# Integer to roman number conversion
def Integer_to_roman(n):
    th = ["", "M", "MM", "MMM"]
    hu= ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM "]
    te = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    on = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    res= ""
    res=res+(th[n//1000] + hu[(n%1000)//100]+te[(n%100)//10]+on[n%10])

    return res

print(Integer_to_roman(int(input())))

