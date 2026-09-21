USE PlayStoreDB;


-- Level 0

SELECT COUNT(*) From Apps;
SELECT AVG(Rating) FROM Apps;
SELECT MAX(Rating) FROM Apps;
SELECT MIN(Rating) FROM Apps;
SELECT SUM(Downloads) FROM Apps;
SELECT * FROM Apps ORDER BY Rating DESC;

-- Level 1

SELECT CategoryID, COUNT(*) AS TOTAL FROM Apps GROUP BY CategoryID;
SELECT CategoryID, AVG(Rating) FROM Apps GROUP BY CategoryID;
SELECT MIN(Price), MAX(Price) FROM Apps;
SELECT * FROM Apps ORDER BY Downloads DESC;
SELECT DeveloperID, COUNT(*) AS No_of_Apps FROM Apps GROUP BY DeveloperID;
SELECT CategoryID, COUNT(*) AS ToatalApps FROM Apps GROUP BY CategoryID
HAVING COUNT(*)>2;

-- Level 2

SELECT DeveloperID, SUM(Downloads) AS Total_Downloads FROM Apps GROUP BY DeveloperID;
SELECT PublisherID, AVG(Rating) AS AvgRating FROM Apps GROUP BY PublisherID;
SELECT DeveloperID, COUNT(*) AS TotalApps FROM Apps GROUP BY DeveloperID HAVING COUNT(*)>1;
SELECT CategoryID, AVG(Rating) FROM Apps GROUP BY CategoryID HAVING AVG(Rating)>4.3;
SELECT CategoryID, COUNT(*) AS NO_OF_APPS FROM Apps GROUP BY CategoryID ORDER BY COUNT(*) DESC;
SELECT AppID, AppName, Rating FROM Apps WHERE Rating = (SELECT MAX(Rating) FROM Apps);
SELECT DeveloperID, SUM(Price) FROM Apps GROUP BY DeveloperID;