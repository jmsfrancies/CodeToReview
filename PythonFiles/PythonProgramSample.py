class Employee:
    def __init__(self,Id,FirstName,LastName,Position,Salary):
        self.Id = Id
        self.FirstName = FirstName
        self.LastName = LastName
        self.Position = Position
        self.Salary = Salary
    def getFullName(self):
        return "{0} {1}".format(self.FirstName,self.LastName)
    def getFullHistory(self):
        return"""ID:{0}\nFull Name:{1} {2}\nPosition: {3}\nSalary: ${4}""".format(self.Id,self.FirstName,self.LastName,self.Position,self.Salary)
    def getAfterTaxes(self):
        # Total Taxes for this example are 10 percent
        taxes = .90
        totalTaxes = self.Salary * taxes
        return "The total salary of {0} {1} after taxes is: ${2}".format(self.FirstName,self.LastName,totalTaxes)
    def getRetirement(self):
        if self.Salary < 20000:
            Retirement = .07            
            TotalRetirement = self.Salary * Retirement
            return "${0} is taking from {1} {2} paycheck for retirement".format(TotalRetirement,self.FirstName,self.LastName)
        elif self.Salary >= 20000 and self.Salary <= 50000:
            Retirement = .10            
            TotalRetirement = self.Salary * Retirement
            return "${0} is taking from {1} {2} paycheck for retirement".format(TotalRetirement,self.FirstName,self.LastName)
        elif self.Salary > 50000 and self.Salary <= 80000:
            Retirement = .13            
            TotalRetirement = self.Salary * Retirement
            return "${0} is taking from {1} {2} paycheck for retirement".format(TotalRetirement,self.FirstName,self.LastName)
        else:
            Retirement = .22            
            TotalRetirement = self.Salary * Retirement
            return "${0} is taking from {1} {2} paycheck for retirement".format(TotalRetirement,self.FirstName,self.LastName)
    def getNet(self):
        taxes = .90
        totalTaxes = self.Salary * taxes
        if self.Salary < 20000:
            Retirement = .07            
            TotalRetirement = self.Salary * Retirement
            Net = totalTaxes - TotalRetirement
            return "{0} {1} net is: $ {2}".format(self.FirstName,self.LastName, Net)
        elif self.Salary >= 20000 and self.Salary <= 50000:
            Retirement = .10            
            TotalRetirement = self.Salary * Retirement
            Net = totalTaxes - TotalRetirement
            return "{0} {1} net is: ${2}".format(self.FirstName,self.LastName, Net)
        elif self.Salary > 50000 and self.Salary <= 80000:
            Retirement = .13            
            TotalRetirement = self.Salary * Retirement
            Net = totalTaxes - TotalRetirement
            return "{0} {1} net is: $ {2}".format(self.FirstName,self.LastName, Net)
        else:
            Retirement = .22            
            TotalRetirement = self.Salary * Retirement
            Net = totalTaxes - TotalRetirement
            return "{0} {1} net is: $ {2}".format(self.FirstName,self.LastName, Net)



Employee1 = Employee(1,"John","Becker","Human Resources",51000)
Employee2 = Employee(2,"Denise","Becker","Security Manager", 37500)
Employee3 = Employee(3,"Darryl","Tanner","CEO",112000)
Employee4 = Employee(4,"Michael","Rogers","Financial Analyst",77000)
Employee5 = Employee(5,"David","Brown","Logician",150000)
Employee6 = Employee(6,"Joseph","Steineger","Business Logic",95000)

print(Employee5.getNet())



print(Employee5.getFullName())
print(Employee5.getFullHistory())
print(Employee5.getAfterTaxes())
print(Employee5.getRetirement())
