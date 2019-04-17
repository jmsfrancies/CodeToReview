class Inventory:
    def __init__(self,ID,ItemName,ItemCost,TotalInventory):
        self.ID = ID
        self.ItemName = ItemName
        self.ItemCost = ItemCost
        self.TotalInventory = TotalInventory
    def getItem(self):
        return "{0}\n{1}\n{2}\n{3}".format(self.ID,self.ItemName,self.ItemCost,self.TotalInventory)
    def LowInventory(self):
        if self.TotalInventory <= 2:
            return "Need more Inventory for: {0}".format(self.ItemName)
        else:
            return "There is sufficient inventory for: {0}".format(self.ItemName)
        

Inventory_1 = Inventory(1,"Tent",119.75,5)
Inventory_2 = Inventory(2,"Camp Stove",98.75,2)
Inventory_3 = Inventory(3,"MRE",55.23,12)
Inventory_4 = Inventory(4,"Tomahawk",46.52,8)
Inventory_5 = Inventory(5,"Water Purifier",48.05,1)

print(Inventory_1.LowInventory())
print(Inventory_2.LowInventory())
print(Inventory_3.LowInventory())
print(Inventory_4.LowInventory())
print(Inventory_5.LowInventory())
print()
print(Inventory_1.getItem(),"\n")
print(Inventory_2.getItem(),"\n")
print(Inventory_3.getItem(),"\n")
print(Inventory_4.getItem(),"\n")
print(Inventory_5.getItem(),"\n")

