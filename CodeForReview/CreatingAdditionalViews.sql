CREATE DATABASE
MyGunStore
GO

/*List of any given Firearm with a Compatbile Ammo in the Database can be looked up */


CREATE VIEW NeedingCompatibleAmmo
AS
    SELECT F.FirearmID,
        F.ModelName,
        F.FirearmBrand,
        F.Caliber AS 'Firearm Caliber',
        C.CompatibleCaliber1 AS '1st Option',
        C.CompatibleCaliber2 AS '2nd Option'
    FROM Firearms F JOIN CompatibleAmmo C
        ON F.Caliber = C.FirearmCaliber
    GROUP BY F.FirearmID,F.ModelName,F.FirearmBrand,F.Caliber,
C.CompatibleCaliber1,C.CompatibleCaliber2
    HAVING F.FirearmBrand != ''
GO

/*Inventory for Compatible Caliber One View Created*/


CREATE VIEW CompatibleCaliberOneInventory
AS
    SELECT
        C.CompatibleCaliber1 AS '1st Option',
        A.PerBox AS 'Total Per Box',
        A.AmmoQuantity AS 'Boxes Left',
        A.AmmoPrice AS 'Cost'
    FROM CompatibleAmmo C JOIN Ammo A
        ON C.CompatibleCaliber1 = A.NameOfCaliber
    GROUP BY C.CompatibleCaliber1,A.AmmoPrice,A.PerBox,A.AmmoQuantity
    HAVING ((C.CompatibleCaliber1 != '')AND(A.AmmoQuantity > 1))
GO


/*Inventory For Compatible Caliber Two Inventory Created*/


CREATE VIEW CompatibleCaliberTwoInventory
AS
    SELECT
        C.CompatibleCaliber2 AS '2nd Option',
        A.PerBox AS 'Total Per Box',
        A.AmmoQuantity AS 'Boxes Left',
        A.AmmoPrice AS 'Cost'
    FROM CompatibleAmmo C JOIN Ammo A
        ON C.CompatibleCaliber2 = A.NameOfCaliber
    GROUP BY C.CompatibleCaliber2,A.AmmoPrice,A.PerBox,A.AmmoQuantity
    HAVING ((C.CompatibleCaliber2 != '')AND(A.AmmoQuantity > 1))
GO


/*Rifle Discounts View Created*/


CREATE VIEW RifleDiscounts
AS
    SELECT
        F.FirearmID,
        F.ModelName,
        F.FirearmBrand,
        CONCAT('$', F.FirearmPrice) AS 'Original Price',
        F.DiscountID,
        D.DiscountCode,
        D.DiscountDescription,
        CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.90))) AS 'Rifle After Discount'
    FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID
    WHERE F.DiscountID = '1'
GO


/*Handgun Discounts Views Created*/


CREATE VIEW HandgunDiscounts
AS
    SELECT
        F.FirearmID,
        F.ModelName,
        F.FirearmBrand,
        CONCAT('$', F.FirearmPrice) AS 'Original Price',
        F.DiscountID,
        D.DiscountCode,
        D.DiscountDescription,
        CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.95))) AS 'Handgun After Discount'
    FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID
    WHERE F.DiscountID = '2'
GO


/*Black Powder Discounts Views Created*/


CREATE VIEW BlackPowderDiscounts
AS
    SELECT
        F.FirearmID,
        F.ModelName,
        F.FirearmBrand,
        CONCAT('$', F.FirearmPrice) AS 'Original Price',
        F.DiscountID,
        D.DiscountCode,
        D.DiscountDescription,
        CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.92))) AS 'Black Powder Item After Discount'
    FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID
    WHERE F.DiscountID = '3'
GO


/*Discounts For Black Powder Accessories Created*/


CREATE VIEW BlackPowderAccessoriesDiscounts
AS
    SELECT
        R.ReloadingID,
        R.BrandOfReloader,
        R.TypeOfMaterial,
        R.PurposeOfMaterial,
        CONCAT('$', R.ToolPrice) AS 'Original Price',
        R.DiscountID,
        D.DiscountCode,
        D.DiscountDescription,
        CONCAT('$', CONVERT(DECIMAL(8,2),(ToolPrice*.92))) AS 'Black Powder Item After Discount'
    FROM Reloading R JOIN Discounts D ON
R.DiscountID = D.DiscountID
    WHERE R.DiscountID = '3'
GO


/*Shotgun Discounts View Created*/


CREATE VIEW ShotgunDiscounts
AS
    SELECT
        F.FirearmID,
        F.ModelName,
        F.FirearmBrand,
        CONCAT('$', F.FirearmPrice) AS 'Original Price',
        F.DiscountID,
        D.DiscountCode,
        D.DiscountDescription,
        CONCAT('$', CONVERT(DECIMAL(8,2),(FirearmPrice*.89))) AS 'Shotgun After Discount'
    FROM Firearms F JOIN Discounts D ON
F.DiscountID = D.DiscountID
    WHERE F.DiscountID = '4'
GO


/*Shotgun Accessories Discounts Views Created*/


CREATE VIEW ShotgunAccessoriesDiscounts
AS
    SELECT
        A.AccessoryID,
        A.TypeOfAccessory AS  'Name Of Accessory',
        CONCAT('$', A.AccessoryPrice) AS 'Original Price',
        A.DiscountID,
        D.DiscountCode,
        D.DiscountDescription,
        CONCAT('$', CONVERT(DECIMAL(8,2),(A.AccessoryPrice*.89))) AS 'Shotgun Accessory After Discount'
    FROM Accessories A JOIN Discounts D ON
A.DiscountID = D.DiscountID
    WHERE A.DiscountID = '4';