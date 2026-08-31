USE PlayStoreDB;

-- LEVEL 0
ALTER TABLE Apps
ADD CONSTRAINT FK_Apps_Developers
FOREIGN KEY (DeveloperID)
REFERENCES Developers(DeveloperID);

ALTER TABLE Publishers
ADD PRIMARY KEY (PublisherID);
ALTER TABLE Apps
ADD CONSTRAINT FK_Apps_Publishers
FOREIGN KEY (PublisherID)
REFERENCES Publishers(PublisherID);
SELECT * FROM Publishers;
SELECT * FROM Apps;

ALTER TABLE Categories
ADD PRIMARY KEY(CategoryID);
ALTER TABLE Apps
ADD CONSTRAINT FK_Apps_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);

SELECT * FROM Apps
WHERE Rating > 4.5;
SELECT * FROM Apps
WHERE Price=0;
SELECT * FROM Categories
WHERE CategoryID=305;

-- Level 1
SELECT * FROM Apps
WHERE Downloads > 500000000;
SELECT * FROM Apps
WHERE Rating BETWEEN 4.3 AND 4.7;
SELECT * FROM Apps
WHERE Price IN (0,299);
SELECT * FROM Apps
WHERE AppName LIKE 'G%';
SELECT * FROM Apps
WHERE AppName LIKE '%Google%';
SELECT * FROM Apps
WHERE Rating > 4.0 AND Downloads > 500000000;
SELECT * FROM Apps
WHERE CategoryID = 301 OR CategoryID = 305;

-- Level 2
SELECT * FROM Apps
WHERE AppName NOT LIKE 'G%';
SELECT * FROM Apps 
WHERE Rating < 4.5 OR Downloads > 1000000000;
SELECT * FROM Developers
WHERE DeveloperName LIKE '%a%';
SELECT * FROM Apps
WHERE Price BETWEEN 0 AND 300;
SELECT * FROM Apps 
WHERE PublisherID=201 OR PublisherID=204;
INSERT INTO Apps VALUES
(1012,'Flipkart',108,201,301,4.6,5000000,0);
SELECT * FROM Apps
WHERE CategoryID <> 305;