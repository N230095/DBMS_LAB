CREATE DATABASE PlayStoreDB;
USE PlayStoreDB;
CREATE TABLE Developers(
	DeveloperID INT Primary Key,
    DeveloperName VARCHAR(60) NOT NULL,
    Country VARCHAR(30),
    FoundedYear INT
);

INSERT INTO Developers VALUES
(101,'Google LLC','USA',1998),
(102,'Meta Platforms','USA',2004),
(103,'Spotify AB','Sweden',2006),
(104,'Canva Pty Ltd','Australia',2012),
(105,"BYJUS'S",'India',2011);
SELECT * FROM Developers;

CREATE TABLE Publishers(
	PublisherID INT,
    PublisherName VARCHAR(20),
    HeadOffice VARCHAR(20),
    SupportEmail VARCHAR(60)
);

INSERT INTO Publishers VALUES
(201,'Google Play','California','support@google.com'),
(202,'Samsung Galaxy Store','Seoul','support@samsung.com'),
(203,'Huawei AppGallery','USA','support@flipkart.com'),
(204,'Amazon Appstore','Seattle','support@amazon.com');
SELECT * FROM Publishers;

CREATE TABLE Categories(
	CategoryID INT,
    CategoryName VARCHAR(40),
    MinimumAge INT
);

INSERT INTO Categories VALUES
(301,'Education',3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);
SELECT * FROM Categories;

CREATE TABLE Apps(
	AppID INT PRIMARY KEY,
    AppName VARCHAR(60),
    DeveloperID INT,
    PublisherID INT,
    CategoryID INT,
    Rating DECIMAL(2,1),
    Downloads BIGINT,
    Price DECIMAL (6,2)
);
INSERT INTO Apps VALUES
(1001,'Google Classroom',101,201,301,4.6,5000000,0),
(1002,'Google Keep',101,201,302,4.5,1000000000,0),
(1003,'Instagram',102,201,304,4.4,5000000000,0),
(1004,'Spotify',103,201,303,4.5,1000000000,0),
(1005,'Canva',104,201,302,4.7,500000000,0),
(1006,'BYJU''S Learning',105,201,301,4.3,100000000,299),
(1007,'Candy Crush',102,204,305,4.6,1000000000,0),
(1008,'Temple Run',104,203,305,4.2,500000000,0);
SELECT * FROM Apps;

-- Level 1
INSERT INTO Developers VALUES
(106,'OpenAI','USA',2015);

INSERT INTO Categories VALUES
(306,'Artificial Intelligence',12);

INSERT INTO Apps VALUES
(1009,'ChatGPT',105,204,304,4.3,500000000,0);

UPDATE Apps
SET Rating = 4.5
WHERE AppID = 1008;

DELETE FROM Developers 
WHERE DeveloperID = 105;

-- Level 2
UPDATE Publishers
SET SupportEmail = 'help@samsung'
WHERE PublisherID = 202;

INSERT INTO Apps VALUES
(1015,'Capcut',102,204,305,4.5,10000000,0),
(1011,'Rapido',103,202,306,4.6,500000000,0);

UPDATE Apps
SET Price = 199
WHERE AppID = 1006;

DELETE FROM Categories
WHERE CategoryID = 303;

SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;


