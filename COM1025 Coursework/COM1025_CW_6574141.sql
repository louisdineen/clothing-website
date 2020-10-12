CREATE DATABASE website;
USE website;
--Initialises and uses the new database called website
CREATE TABLE Customer
(
	CustomerID INT UNIQUE NOT NULL,
	Name VARCHAR(30) NOT NULL,
	DateOfBirth VARCHAR(10) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	PostCode VARCHAR(7) NOT NULL,
	PRIMARY KEY (CustomerID)
);
CREATE TABLE Product
(
	ProductCode INT UNIQUE NOT NULL,
	Price INT NOT NULL,
	PointsGain INT NOT NULL,
	PRIMARY KEY (ProductCode)
);
CREATE TABLE Clothing
(
	ProductCode INT UNIQUE NOT NULL,
	Type ENUM('Jumper','T shirt','Shorts','Socks','Trousers'),
	Size ENUM('S','M','L','XL'),
	SalePrice INT NOT NULL,
	Personalisation BOOLEAN,
	InStock BOOLEAN,
	FOREIGN KEY (ProductCode)
);
CREATE TABLE Tickets
(					/*Creates a new table for ticket purchases*/
	TicketNumber INT UNIQUE NOT NULL,
	ProductCode INT UNIQUE NOT NULL,
	Match VARCHAR(20) NOT NULL,
	Stand ENUM('AW','HR','MS','WL'), --Corresponds to name of each stand
	Block VARCHAR(1) NOT NULL,
	Row INT NOT NULL,
	SeatNum INT NOT NULL,
	PRIMARY KEY (TicketNumber),
	FOREIGN KEY (ProductCode)
);
INSERT INTO Product VALUES (00221, 35, 200);
INSERT INTO Tickets VALUES (2321, 00221, Derby, AW, V, 12, 198);
INSERT INTO Clothing VALUES (00451, T shirt, M, 40, TRUE, TRUE);
INSERT INTO Clothing VALUES (00842, Shorts, S, 20, FALSE, FALSE);
INSERT INTO Clothing VALUES (00904, Jumper, L, 50, FALSE, TRUE);
DESCRIBE website;
SHOW Clothing;
