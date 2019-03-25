"""Hello, The info class is the parent class to the Stack, Queue, and Deque classes.
I decided to add a main statement that would ask user input about which
method he or she prefers, once a method is chosen. The program proceeds to ask for a
list of numbers or strings, then proceeds to break down the list with the chosen method !"""

class info:
    def __init__(self):
        self.things = []   
    def isEmpty(self):
        return self.things == []
    def size(self):
        return len(self.things)
class Stack(info):
    pass
    def push(self, stuff):
        self.things.append(stuff)
    def pop (self):
        return self.things.pop()
    def peek(self):
        return self.things[len(self.things)-1]
class Deque(info):
    pass
    def addFront(self, stuff):
        self.things.append(stuff)
    def addRear(self, stuff):
        self.things.insert(0,stuff)
    def removeFront(self):
        return self.things.pop()
    def removeRear(self):
        return self.things.pop(0)
class Queue(info):
    pass
    def enqueue(self, stuff):
        self.things.insert(0, stuff)
    def dequeue(self, things):
        return self.things.pop()
    
stack = Stack()
deque = Deque()
queue = Queue()

def Stacking(stack):    
    total = 0
    num = int(input("How many variables would you like to add to the stack: "))
    while True:
      if total < num:  
        user = input("Enter any variable: ")
        stack.push(user)
        total += 1
      if total == num:
          print("There are {0} items in the Stack".format(stack.size()))
          while stack.size() > 0:
              print(stack.pop())
              if False:
                  stack.isEmpty()
                  break
          break


def Deques(deque):
    total = 0
    num = int(input("How many variables would you like to add to the Deque: "))
    while True:
        if total < num:  
          user = input("Enter any variable: ")
          deque.addRear(user)
          total += 1
          continue
        if total == num:
            print("There are {0} items in the Deque".format(deque.size()))
        howtoSort = input("Sort From Rear or Front: ")    
        while deque.size() > 0:
              if True and howtoSort == "Front":
                  print(deque.removeFront())
              if True and howtoSort == "Rear":
                  print(deque.removeRear())
              if False:    
                  print(deque.isEmpty())
                  break
        break     

def queues(Queue):
    total = 0
    num = int(input("How many variables would you like to add to the Queue: "))
    while True:
        if total < num:  
          user = input("Enter any variable: ")
          queue.enqueue(user)
          total += 1
          continue
        if total == num:
            print("There are {0} items in the Queue".format(queue.size()))
        while queue.size() > 0:
          if True:
            print(queue.dequeue(0))
          if False:
            print(queue.isEmpty())
            break
        break
    
def main():
    userInput = input("Enter Stack, Queue, or Deque: ")
    if userInput == "Stack":
        Stacking(stack)
    if userInput == "Queue":
        queues(Queue)
    if userInput == "Deque":
        Deques(deque)
main()
