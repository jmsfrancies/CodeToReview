

def counting(a):
    while len(a) != 0:
        i = a[0]
        print(i)
        a.remove(i)
        
        
def spelling(b):
    while len(b) != 0:
        i = b[0]
        print(i)
        b.remove(i)
    


def main():
    a = [5,4,3,2,1]
    b = ["H","e","l","l","o"]
    x = int(input("Enter 1 for counting and 2 for spelling: "))
    if x == 1:
        counting(a)
    else:
        spelling(b)
main()