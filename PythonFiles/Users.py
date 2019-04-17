"""Class User has the purpose of identifying the objects within the User_1 and User_2,
and the constructors UserGreeting and UserInfo are to interpret the Objects defined within the Class User"""
class User():
    def __init__(self,UserID,FirstName,LastName,UserName,PassWord,EmailAddress):
        self.UserID = UserID
        self.FirstName = FirstName
        self.LastName = LastName
        self.UserName = UserName
        self.PassWord = PassWord
        self.EmailAddress = EmailAddress
    def UserGreeting(self):
        return "Welcome Back {0} {1}".format(self.FirstName,self.LastName)
    def UserInfo(self):
        return """ID: %d \nFirst Name: %s \nLast Name: %s \nUser Name:
%s \nPass Word: %s \nEmail Address:%s"""%(self.UserID,self.FirstName,self.LastName,self.UserName,self.PassWord,self.EmailAddress)
    
User_1 = User(1,"James","Francies","jmsfrancies","12to7to1921","jmsfrancies@yahoo.com")
User_2 = User(2,"Michael","Arvas","MichArv","SlenderMan","AlwaysRoomForBeer@gmail.com")

#User 1 Greeting Constructor and Info Constructor Printouts

print(User_1.UserGreeting(),"\n")
print(User_1.UserInfo(),"\n")

#User 2 Greeting Constructor and  Info Constructor Printouts 

print(User_2.UserGreeting(),"\n")
print(User_2.UserInfo(),"\n")