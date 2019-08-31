from graphics import *
from colorama import *


def Memes():
    win = GraphWin("Here Are Some Memes", 800, 800)
    win.getMouse()
    DogInArmor = Image(Point(400, 400), "DogInArmor.PPM")
    DogInArmor.draw(win)
    win.getMouse()
    DogInArmor.undraw()
    NicholasCage = Image(Point(400, 400), "NicholasCage.PPM")
    NicholasCage.draw(win)
    win.getMouse()
    NicholasCage.undraw()
    Shrek = Image(Point(400, 400), "Shrek.PPM")
    Shrek.draw(win)
    win.getMouse()
    Shrek.undraw()
    ModelAnswer = Image(Point(400, 400), "ModelAnswer.PPM")
    ModelAnswer.draw(win)
    win.getMouse()
    ModelAnswer.undraw()
    Handicapped = Image(Point(400, 400), "Handicapped.PPM")
    Handicapped.draw(win)
    win.getMouse()
    Handicapped.undraw()
    win.getMouse()


def main():
    init()
    print(Fore.RED)
    print(Back.GREEN)
    Question = int(input("Would You Like To See Some Memes Yes or No? (1/2)"))
    if Question == 1:
        Memes()
    else:
        Question = input("Press Any Key To Escape: ")


main()
