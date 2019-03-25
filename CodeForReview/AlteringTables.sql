CREATE DATABASE
MyGunStore

/*Alter Tables*/

ALTER TABLE Knives
ADD KnifeModel varchar(50),
BladeLength Decimal(5,2),
SteelType varchar(50),
Restrictions varchar(50);

ALTER TABLE Ammo
ADD PerBox INT;

ALTER TABLE Reloading
ADD ToolPrice money NOT NULL,
ToolQuantity INT NOT NULL;

ALTER TABLE Firearms
ADD ModelName varchar(50), 
BarrelLength INT, 
ChokeType varchar(50) NULL, 
UsedOrNew varchar(50),
MagazineCapacity INT;

ALTER TABLE Accessories
ADD DiscountID INT NULL
CONSTRAINT Accesories_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID);


ALTER TABLE Ammo
ADD DiscountID INT NULL
CONSTRAINT Ammo_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID);


ALTER TABLE Knives
ADD DiscountID INT NULL
CONSTRAINT Knives_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID);


ALTER TABLE Reloading
ADD DiscountID INT NULL
CONSTRAINT Reloading_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID);


ALTER TABLE Firearms
ADD DiscountID INT NULL
CONSTRAINT Firearms_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID);