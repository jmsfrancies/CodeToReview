USE
MyGunStore
GO
/*Update File*/

UPDATE Ammo
SET NameOfCaliber = '7.62x51mm'
WHERE NameOfCaliber = '7.62x51';

UPDATE Firearms
SET DiscountID = '1'
WHERE FirearmType = 'Rifle';


UPDATE Firearms
SET DiscountID = '2'
WHERE FirearmType = 'Revolver';


UPDATE Firearms
SET DiscountID = '2'
WHERE FirearmType = 'Handgun';


UPDATE Firearms
SET DiscountID = '3'
WHERE FirearmType = 'Black Powder';


UPDATE Firearms
SET DiscountID = '4'
WHERE FirearmType = 'Shotgun';


UPDATE Ammo
SET DiscountID = '6'
WHERE AmmoQuantity <= '100';


UPDATE Ammo
SET DiscountID = '7'
WHERE AmmoQuantity > '499';


UPDATE Reloading
SET DiscountID = '3'
WHERE IntendedFirearm = 'Black Powder';


UPDATE Knives
SET DiscountID = '5'
WHERE Restrictions = 'N/A';


UPDATE Knives
SET DiscountID  = '9'
WHERE Restrictions = 'LEO Only';


UPDATE Accessories
SET DiscountID = '8'
WHERE TypeOfAccessory LIKE '%Holster';


UPDATE Accessories
SET DiscountID = '8'
WHERE TypeOfAccessory LIKE '%Carrying Case';


UPDATE Firearms
SET DiscountID = '2'
WHERE ModelName = 'M&P EZ';


UPDATE Accessories
SET DiscountID  = '4'
WHERE TypeOfAccessory LIKE '%Choke%';

/*Create Views*/

/*
USE MyGunStore
GO

/*Shotgun View*/


CREATE VIEW ShotgunInventory
AS
SELECT *
FROM Firearms
WHERE ChokeType IS NOT NULL;


/*Cartridge Rifle View*/


CREATE VIEW ModernRifleInventory
AS
SELECT *
FROM Firearms
WHERE FirearmType = 'Rifle';


/*Black Powder View*/


CREATE VIEW BlackPowderFirearms
AS
SELECT * 
FROM Firearms
WHERE FirearmType  = 'Black Powder';


/*Need to Order more Firearms View*/


CREATE VIEW LowFirearmInventory
AS
SELECT FirearmID,FirearmBrand,ModelName
FROM Firearms
WHERE FirearmQuantity < 2; 
;

/*What Accessories Are Needed View*/


CREATE VIEW LowAccessoriesInventory
AS
SELECT AccessoryID,TypeOfAccessory,AccessoryBrand 
FROM Accessories
WHERE ((Quantity < 2) AND (AccessoryPrice > '1200.00'))
OR (((AccessoryPrice < '30.00') AND ((Quantity > 5) AND (Quantity < 20))));


/*Knife Inventory View Created*/


CREATE VIEW LowKnivesInventory
AS
SELECT KnifeID, KnifeBrand, KnifeModel
FROM Knives
WHERE KnifeQuantity <= 3 OR ((KnifePrice > '40.00')AND(Restrictions != 'N/A'));


/*Ammo Inventory View Created*/


CREATE VIEW LowAmmoInventory
AS
SELECT CaliberID,NameOfCaliber,BrandOfCaliber,PerBox
FROM Ammo
WHERE AmmoQuantity < 5 AND PerBox < 100;


/*Gun Cleaing Inventory View Created*/


CREATE VIEW LowGunCleaningInventory
AS
SELECT CleaningID, CleaningBrand,TypeOfCleaner 
FROM GunCleaning
WHERE (QuantityOfCleaner > 8) OR 
((TypeOfCleaner = 'Gun Lubricant')AND(TypeOfCleaner = 'Cleaning Patches'));


/*Reloading Inventory View Created*/


CREATE VIEW LowReloadingInventory
AS
SELECT ReloadingID,BrandOfReloader,TypeOfMaterial 
FROM Reloading
WHERE ToolQuantity < 2;

*/
