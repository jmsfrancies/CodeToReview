/*CREATE DATABASE FILE*/
CREATE DATABASE
MyGunStore
GO
CREATE TABLE Firearms(
FirearmID        INT          NOT NULL PRIMARY KEY,
FirearmBrand     varchar(50)  NOT NULL,
FirearmType      varchar(50)  NOT NULL,
ActionType       varchar(50)  NOT NULL,
Caliber          varchar(50)  NOT NULL,
FirearmPrice     money        NOT NULL,
FirearmQuantity  INT          NULL
);

CREATE TABLE Accessories(
AccessoryID  INT NOT NULL PRIMARY KEY,
TypeOfAccessory varchar(50) NOT NULL,
AccessoryBrand  varchar(50) NOT NULL,
AccessoryPrice  money       NOT NULL,
Quantity        INT         NULL
);

CREATE TABLE Knives(
KnifeID       INT         NOT NULL PRIMARY KEY,
KnifeBrand    varchar(50) NOT NULL,
KnifeType     varchar(50) NOT NULL,
KnifePrice    money       NOT NULL,
KnifeQuantity INT         NULL
);

CREATE TABLE Ammo(
CaliberID      INT          NOT NULL PRIMARY KEY,
NameOfCaliber  varchar(50)  NOT NULL,
BrandOfCaliber varchar(50)  NOT NULL,
TypeOfBulllet  varchar(50)  NOT NULL,
BulletWeight   varchar(50)  NOT NULL,
FeetPerSecond  INT          NOT NULL,
FootLbs        INT          NOT NULL,
AmmoPrice      money        NOT NULL,
AmmoQuantity   INT          NULL
);

CREATE TABLE GunCleaning(
CleaningID        INT         NOT NULL PRIMARY KEY,
CleaningBrand     varchar(50) NOT NULL,
TypeOfCleaner     varchar(50) NOT NULL,
PriceOfCleaner    money       NOT NULL,
QuantityOfCleaner INT         NULL
);

CREATE TABLE Reloading(
ReloadingID         INT           NOT NULL PRIMARY KEY,
BrandOfReloader     varchar(50)   NOT NULL,
TypeOfMaterial      varchar(50)   NOT NULL,
PurposeOfMaterial   varchar(50)   NOT NULL,
IntendedFirearm     varchar(50)   NULL
);

CREATE TABLE CompatibleAmmo
(CompatibiltyID INT NOT NULL PRIMARY KEY,
FirearmCaliber varchar(50) NOT NULL,
CompatibleCaliber1 varchar(50) NOT NULL,
CompatibleCaliber2 varchar(50) NULL,
ReverseCompatibility varchar(50) NOT NULL
);

CREATE TABLE Discounts 
(DiscountID INT NOT NULL PRIMARY KEY,
DiscountCode INT NOT NULL,
DiscountDescription varchar(128) NOT NULL
);

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