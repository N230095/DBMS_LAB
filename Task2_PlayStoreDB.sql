USE PlayStoreDB;

-- LEVEL 0

SELECT UPPER(DeveloperName) FROM Developers;
SELECT LOWER(DeveloperName) FROM Developers;
SELECT LENGTH(AppName) FROM Apps;
SELECT CategoryName, LENGTH(CategoryName) FROM Categories;
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT ROUND(Rating, 0) FROM Apps;

-- LEVEL 1

SELECT AppName, SUBSTRING(AppName,1,5) FROM Apps;
SELECT CONCAT(DeveloperName,'  ',Country) FROM Developers;
SELECT ROUND(Rating) FROM Apps;
SELECT CEIL(Price) FROM Apps;
SELECT FoundedYear FROM Developers;
SELECT CONVERT(Downloads, CHAR) FROM Apps;

-- LEVEL 2

SELECT UPPER(AppName), Rating FROM Apps;
SELECT SUBSTRING(CategoryName,1,3) FROM Categories;
SELECT ABS(Price-200) AS Absolute_Difference FROM Apps;
SELECT DeveloperName, LENGTH(DeveloperName) FROM Developers;
SELECT CURRENT_DATE(), CURRENT_TIMESTAMP();
SELECT CAST(PublisherID AS CHAR) FROM Publishers;