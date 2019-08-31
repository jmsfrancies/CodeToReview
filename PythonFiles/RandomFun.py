from random import *

def main():
    x = randrange(1,100)
    tries = 0
    while tries != 5:
        y = int(input("Enter a number between 1-99: "))
        if y <= 99 and y >= 1:
            tries = tries + 1
            if y == x:
                print("Congrats {0} is the correct number".format(x))
                break
            elif y > x:
                print("Lower")
            else:
                print("Higher")
        else:
            print("Please enter a number between 1-99.")

    if tries == 5:
        print("The number was {0}".format(x))    
main()