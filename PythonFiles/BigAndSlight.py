def BigSort(x):
    x = [5,9,2,7,3,8,18,95,35,1]
    list2 = []
    while len(x) >= 2:
        i = x[0]
        j = x[1]
        if i > j:
            list2.append(j)
            x.remove(j)
        else:
            list2.append(i)
            x.remove(i)
    
    list2.append(i)
    x.remove(i)
    print(list2)




def SlightSort(y):
    list3 = []
    while len(y) >= 2:
        i = y[0]
        j = y[1]
        if i > j:
            list3.append(j)
            y.remove(j)
        else:
            list3.append(i)
            y.remove(i)
    
    list3.append(i)
    y.remove(i)
    print(list3)

def main():
    x = [5,9,2,7,3,8,18,95,35,1]
    y = [1,5,6,7,2,13,3,4,77,49]
    BigSort(x)
    SlightSort(y)
    
main()
    