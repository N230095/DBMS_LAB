USE PlayStoreDB;

-- Level 0
UPDATE Apps
SET Rating=4.9
WHERE AppID = 1002;
COMMIT;
SELECT * FROM Developers;
UPDATE Apps
SET Price = 240
WHERE AppID = 1006;
ROLLBACK;
SELECT * FROM Apps;
INSERT INTO Apps VALUES
(1016,'WPS',102,203,304,4.5,5000000000,0.00);
COMMIT;
SET AUTOCOMMIT=0;
INSERT INTO Developers VALUES
(107,'Udemy','INDIA',2014);
ROLLBACK;
UPDATE Apps
SET Rating=3.9
WHERE AppID = 1003;
SAVEPOINT thirdapp;

-- Level 1

-- 1.
UPDATE Apps
SET Rating=4.8
WHERE AppID = 1004;
SAVEPOINT appid1004;
UPDATE Apps
SET Rating=4.7
WHERE AppID = 1005;
-- 2.
UPDATE Apps
SET Price = 540
WHERE AppID = 1007;
ROLLBACK TO SAVEPOINT appid1004;
-- 3.
INSERT INTO Apps VALUES
(1017,'Duolingo',105,203,302,4.1,100000000,0.00);
SAVEPOINT Duolingo;
UPDATE Apps
SET Price = 100
WHERE AppID = 1017;
ROLLBACK TO SAVEPOINT Duolingo;
-- 4.
GRANT SELECT ON Apps TO 'root'@'localhost';
-- 5.
GRANT SELECT, INSERT ON Apps TO 'root'@'localhost';
-- 6.
REVOKE INSERT ON Apps FROM 'root'@'localhost';

-- Level 2

-- 1.
UPDATE Apps
SET Rating = 4.8
WHERE AppID = 1001;
SAVEPOINT app1;
UPDATE Apps
SET Rating = 4.0
WHERE AppID = 1002;
SAVEPOINT app2;
UPDATE Apps
SET Price = 145
WHERE AppID = 1003;
ROLLBACK TO SAVEPOINT app2;
-- 2.
INSERT INTO Categories VALUES
(307,'Health',12);
INSERT INTO Categories VALUES
(308,'Travel',15);
SAVEPOINT category_sp;
ROLLBACK TO SAVEPOINT category_sp;
-- 3.
GRANT SELECT, INSERT, UPDATE ON Apps TO 'root'@'localhost';
-- 4. 
REVOKE UPDATE ON Apps FROM 'root'@'localhost';
-- 5.
GRANT SELECT ON Developers TO 'root'@'localhost';
REVOKE SELECT ON Developers FROM 'root'@'localhost';
-- 6.
UPDATE Apps
SET Rating = 4.0
WHERE AppID = 1006;
UPDATE Apps
SET Price = 349
WHERE AppID = 1007;
INSERT INTO Categories VALUES
(309,'Moives',12);
COMMIT;
-- 7.
SELECT * FROM Apps
WHERE AppID in (1006,1007);
SELECT * FROM Categories
WHERE CategoryID IN (307,308,309);