USE PlayStoreDB;

-- Level 0

-- 1
SELECT A.AppName, D.DeveloperName From Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID;
-- 2
SELECT A.AppName, P.PublisherName FROM Apps A INNER JOIN Publishers P ON A.PublisherID = P.PublisherID;
-- 3
SELECT A.AppName, C.CategoryName FROM Apps A INNER JOIN Categories C ON A.CategoryID = C.CategoryID;
-- 4
SELECT A.AppName, D.DeveloperName, P.PublisherName FROM Apps A INNER JOIN Developers ON A.DeveloperID = D.DeveloperID 
INNER JOIN Publishers P ON A.PublisherID = P.PublisherID;
-- 5
SELECT A.AppName, D.DeveloperName, C.CategoryName FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID
INNER JOIN Categories C ON A.CategoryID = C.CategoryID;
-- 6
SELECT * FROM Publishers P LEFT JOIN Apps A ON P.PublisherID = A.PublisherID;
-- 7
SELECT * FROM Categories C LEFT JOIN Apps A ON C.CategoryID = A.CategoryID;


-- Level 1
-- 1
SELECT * FROM Publishers P LEFT JOIN Apps A ON P.PublisherID = A.PublisherID;
-- 2
SELECT * FROM Apps A RIGHT JOIN Publishers P ON A.PublisherID = P.PublisherID;
-- 3
SELECT *  FROM Categories C LEFT JOIN Apps A ON C.CategoryID = A.CategoryID;
-- 4
SELECT A.AppName, D.DeveloperName, D.Country FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID;
-- 5
SELECT A.AppName, D.DeveloperName, P.PublisherName, C.CategoryName 
FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID
INNER JOIN Publishers P ON A.PublisherID = P.PublisherID
INNER JOIN Categories C ON A.CategoryID = C.CategoryID;
-- 6
SELECT A.AppName, D.DeveloperName, D.Country FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID
WHERE Country = 'USA';
-- 7
SELECT A.AppName, P.PublisherName, C.CategoryName FROM Apps A INNER JOIN Categories C ON A.CategoryID = C.CategoryID 
INNER JOIN Publishers P ON A.PublisherID = P.PublisherID 
WHERE CategoryName = 'Gaming';
-- 8
SELECT A.AppName, D.DeveloperName FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID 
WHERE Rating>=4.5;


-- Level 2

-- 1
SELECT P.PublisherName, A.AppName FROM Publishers P LEFT JOIN Apps A ON P.PublisherID = A.PublisherID;
-- 2
SELECT P.PublisherName, A.AppName FROM Publishers P LEFT JOIN Apps A ON P.PublisherID = A.PublisherID 
WHERE A.PublisherID = NULL;
-- 3
SELECT A.AppName, C.CategoryName FROM Apps A INNER JOIN Categories C ON A.CategoryID = C.CategoryID 
ORDER BY C.CategoryName;
-- 4
SELECT A.AppName, D.DeveloperName, P.PublisherName, C.CategoryName, A.Rating
FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID
INNER JOIN Publishers P ON A.PublisherID = P.PublisherID
INNER JOIN Categories C ON A.CategoryID = C.CategoryID;
-- 5
SELECT A.AppName FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID 
INNER JOIN Publishers P ON A.PublisherID = P.PublisherID 
WHERE D.Country = 'USA' AND P.PublisherName = 'Google Play';
-- 6
SELECT D.DeveloperName, A.AppName FROM Developers D LEFT JOIN Apps A ON D.DeveloperID = A.DeveloperID;
-- 7
SELECT D1.DeveloperName, D2.DeveloperName, D1.Country FROM Developers D1 JOIN Developers D2 ON D1.Country = D2.Country 
AND D1.DeveloperName<D2.DeveloperName;
-- 8
SELECT * FROM Publishers CROSS JOIN Categories;
-- 9
SELECT * FROM Publishers P LEFT JOIN Apps A ON P.PublisherID = A.PublisherID 
UNION
SELECT * FROM Publishers P RIGHT JOIN Apps A ON P.PublisherID = A.PublisherID;
-- 10
SELECT A.AppName, D.DeveloperName, P.PublisherName, C.CategoryName
FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID
INNER JOIN Publishers P ON A.PublisherID = P.PublisherID
INNER JOIN Categories C ON A.CategoryID = C.CategoryID 
WHERE C.CategoryName = 'Gaming' OR C.CategoryName = 'Social';
-- 11
SELECT A.AppName, D.DeveloperName, C.CategoryName, A.Rating
FROM Apps A INNER JOIN Developers D ON A.DeveloperID = D.DeveloperID
INNER JOIN Categories C ON A.CategoryID = C.CategoryID WHERE A.Rating BETWEEN 4.3 AND 4.7;
-- 12
SELECT D.DeveloperName, A.AppName, D.Country FROM Developers D INNER JOIN Apps A ON D.DeveloperID = A.DeveloperID
WHERE D.Country <> 'India';