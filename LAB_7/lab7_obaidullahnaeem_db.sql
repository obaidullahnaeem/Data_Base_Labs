create database lab_6_obaidullahnaeem;
	use lab_6_obaidullahnaeem;

CREATE TABLE Clubs (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(50),
    MeetingDay VARCHAR(20),
    MonthlyFee DECIMAL(10,2)
);

INSERT INTO Clubs (ClubID, ClubName, MeetingDay, MonthlyFee)
VALUES
(1, 'Sports Club', 'Monday', 1500.00),
(2, 'Reading Club', 'Tuesday', 1000.00),
(3, 'Music Club', 'Wednesday', 1200.00),
(4, 'Science Club', 'Thursday', 1800.00),
(5, 'Art Club', 'Friday', 1300.00);

SELECT * FROM Clubs;

----------------------------------------------------------------

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50),
    City VARCHAR(50),
    ClubID INT,
);

INSERT INTO Members (MemberID, MemberName, City, ClubID)
VALUES
(1, 'Ali', 'Lahore', 1),
(2, 'Sara', 'Karachi', 2),
(3, 'Ahmed', 'Islamabad', 3),
(4, 'Ayesha', 'Lahore', 4),
(5, 'Usman', 'Multan', 5);

SELECT * FROM Members;
-------------------------------------------------------------
CREATE TABLE Coaches (
    CoachID INT PRIMARY KEY,
    CoachName VARCHAR(50),
    City VARCHAR(50),
    ClubID INT,
);

INSERT INTO Coaches (CoachID, CoachName, City, ClubID)
VALUES
(1, 'Imran', 'Lahore', 1),
(2, 'Sana', 'Karachi', 2),
(3, 'Bilal', 'Islamabad', 3),
(4, 'Hina', 'Lahore', 4),
(5, 'Kamran', 'Multan', 5),
(6, 'Nadia', 'Faisalabad', 1);

--------------------------------------------

CREATE TABLE OnlineMembers (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO OnlineMembers (MemberID, MemberName, City)
VALUES
(1, 'Zain', 'Lahore'),
(2, 'Mariam', 'Karachi'),
(3, 'Hamza', 'Islamabad'),
(4, 'Fatima', 'Multan'),
(5, 'Daniyal', 'Lahore');

SELECT * FROM OnlineMembers;

-- Display all records
SELECT *
FROM Clubs
ORDER BY ClubID;

SELECT *
FROM Members
ORDER BY MemberID;

SELECT *
FROM Coaches
ORDER BY CoachID;

SELECT *
FROM OnlineMembers
ORDER BY MemberID;

------------------------------------------
-- section 2 


--A 
SELECT m.MemberName, c.ClubName , c.MeetingDay
FROM Members AS m 
INNER JOIN Clubs AS c
ON c.ClubID = m.ClubID 
ORDER BY MemberID;

--B
SELECT co.CoachName , co.City , c.ClubName , c.MonthlyFee
FROM Coaches AS  co
INNER JOIN Clubs AS c
ON co.ClubID = c.ClubID 
ORDER BY co.CoachID;



-------------------------------------------------
--task 3   Keep people without assigned clubs


-- task 3 a 
SELECT m.MemberName, m.City , c.ClubName
FROM Members AS m 
LEFT JOIN Clubs AS c
ON m.ClubID = c.ClubID 
ORDER BY m.ClubID, c.ClubID; 

-- 3 b 
SELECT co.CoachName , co.City , c.ClubName 
FROM Coaches AS  co
LEFT JOIN Clubs AS c
ON co.ClubID = c.ClubID 
ORDER BY co.CoachID;


SELECT * FROM Members;
SELECT * FROM Clubs;

--------------------------------------------------
--TASK 4  Keep every club 

--a 
SELECT c.ClubName, c.MeetingDay, m.MemberName
FROM Members AS m
RIGHT JOIN Clubs AS c 
ON m.ClubID = c.ClubID
ORDER BY c.ClubID, m.MemberID ;

-- b 
SELECT c.ClubName, c.MonthlyFee, co.CoachName
FROM Coaches AS co
RIGHT JOIN Clubs AS c ON co.ClubID = c.ClubID
ORDER BY c.ClubID, co.CoachID;

SELECT * FROM Members;
SELECT * FROM Clubs;

-------------------------------------------------------------
-- TASK 5  Keep matched and unmatched records 

--a 
SELECT m.MemberName, m.City AS MemberCity, c.ClubName, c.MeetingDay
FROM Members AS m
FULL OUTER JOIN Clubs AS c
ON m.ClubID = c.ClubID
ORDER BY c.ClubID, m.MemberID;

--b
SELECT co.CoachName, co.City AS CoachCity, c.ClubName, c.MonthlyFee
FROM Coaches AS co
FULL OUTER JOIN Clubs AS c 
ON co.ClubID = c.ClubID
ORDER BY c.ClubID, co.CoachID;

--------------------------------------------------
--TASK 6  Build lists without duplicate rows 
-- UNION     >>> ALL RECORD / NO DUPLICATES     (FROM BOTH TABLE)
-- UNION ALL >>> DUPLICATES / NULL / ALL RECORD (FROM BOTH TABLE)
--a 
SELECT m.City 
FROM Members AS m
UNION
SELECT co.City
FROM Coaches AS co;

--b
SELECT m.MemberName AS MemberName
FROM Members AS m
UNION
SELECT o.MemberName
FROM OnlineMembers AS o
ORDER BY MemberName;

SELECT * FROM Members;
SELECT * FROM Coaches;



-- UNION ALL >>> NULL / DUPLICATES 



















