CREATE DATABASE WorkshopLab5;
USE WorkshopLab5;

create table WORKSHOPS
(
WorkshopID int primary key identity (1,1),
WorkshopName  varchar(255),
Category varchar(255),
Fee DECIMAL,
Seats int  
);
drop table WORKSHOPS;

insert into dbo.WORKSHOPS values 
('Python Basics', 'Technology', 900.00 , 55),
('Web Design', 'Technology', 1400.00 , 30),
('Cyber Safety', 'Technology', 1200.00 , 20),
('Data Skills', 'Technology', 1800.00 , 15),
('Sketching','Arts',600.00,18  ),
('Photography', 'Arts', 1600.00 , 12 ),
('Calligraphy', 'Arts', 800.00 ,20  ),
('Yoga', 'Fitness', 700.00,25     ),
('Aerobics', 'Fitness', 850.00 , 20),
('First Aid ', 'Health', 500.00 ,30),
('Nutrition', 'Health', 950.00 ,20),
('Health Talk', 'Fitness', 300.00 ,0);

SELECT *
FROM Workshops
ORDER BY WorkshopID;

INSERT INTO Workshops (WorkshopName, Category, Fee, Seats)
VALUES
('Python Basics', 'Technology', 900.00, 25),
('Web Design', 'Technology', 1400.00, 30);

/* PRIACTICE 1
it will help increment the numbers automatically,
so we don't have to write it manually in each row.
*/

-------------------------------------------------------------------
-- TASK 2 Give query results clear names

--a
select  WorkshopName as Workshop,
Category as WorkshopCategory,
Fee as RegistrationFee 
from WORKSHOPS
order by WorkshopID ;

--b 
select  w.WorkshopName as Workshop,
w.Fee as RegistrationFee
from WORKSHOPS as w
where Category= 'Health';

select * from WORKSHOPS;

----------------------------------------------
--TASK 3 Summarize all workshops
--a 
select min(Fee) as LowestFee,max(Fee) as  HighestFee
from WORKSHOPS;

select min(Seats) as FewestSeats,max(Seats) as  MostSeats
from WORKSHOPS;

-- c 
select count(WorkshopName) as WorkshopCount
from WORKSHOPS;

select count(Seats) as TotalSeats
from WORKSHOPS;


select avg(Fee) as AverageFee
from WORKSHOPS;

select * from WORKSHOPS;

---------------------------------------------------------------
--TASK 4 Summarize selected workshops

--a
SELECT count(*) AS SelectedWorkshops
FROM Workshops
WHERE Fee >= 1200 and Category='Technology';

-- b
select sum(Fee) as TotalFitnessFees
FROM Workshops
Where Category='Fitness';

--c
select max(Seats) as LargestArtsSeats
FROM Workshops
where Category='Arts' and Fee<1000;


select * from WORKSHOPS;


---------------------------------------------------------------
--TASK 5 Create a category summary

select  w.Category as WorkshopCategory, 
COUNT(*) as WorkshopCount, 
SUM(Seats) as TotalSeats, 
AVG(Fee) as AverageFee
FROM Workshops as w
group  by Category;
-- example 
SELECT Category, SUM(Fee) AS TotalCategoryFees
FROM Workshops
GROUP BY Category;

---------------------------------------------------------------
-- TASK 6 Keep categories that meet a condition

SELECT Category, MIN(Fee) AS LowestFee
FROM Workshops
GROUP BY Category
HAVING MIN(Fee) >= 600;

--a
SELECT Category ,sum(Seats) AS TotalSeats
FROM Workshops
GROUP BY Category
HAVING sum(Seats)>50;

--b
select Category, count(Category) as WorkshopCount
from Workshops
group by Category 
having count(Category)>2 ;

--c 
select Category, avg(Fee) as AverageFee
from Workshops
group by Category 
having avg(Fee)>=1000 ;

select * from WORKSHOPS;

------------------------------------------------------------

-- Practice 3.   Explain what is being filtered. 

--  Fee is at least Rs 900     ANS.  WHERE only rows will be used.
--Total seats exceed 60        ANS. Having , sum is being used init.
-- Category equals Arts        ANS.  Where simple condition.
-- Average fee is below Rs 800 ANS.  Having, Avg is being used init.


-- Practice 4.   HAVING SUM(Seats) > 50;



-----------------------------------------------
SELECT Category, SUM(Seats) AS TotalSeats 
FROM Workshops 
WHERE Fee < 1000 
GROUP BY Category 
HAVING SUM(Seats) >= 40 
ORDER BY Category;

--TASK 7  Apply row and group conditions 

--a
SELECT  Category,SUM(Seats) as TotalSeats
FROM Workshops 
WHERE Fee>=800
GROUP BY Category
HAVING sum(Seats)>=40;

--b 
SELECT  Category, COUNT(*) as WorkshopCount
FROM Workshops 
WHERE Seats>=20
GROUP BY Category
HAVING COUNT(*) >=2 ;

-- Practice 5.  maybe cuz the sketching fee is 600 not 800 or more .

select * from WORKSHOPS;
--------------------------------------------------------------



CREATE TABLE Participants
(
    ParticipantID INT PRIMARY KEY IDENTITY(1,1),
    ParticipantName VARCHAR(60),
    City VARCHAR(30),
    FeePaid DECIMAL(10,2),
    Discount DECIMAL(10,2),
    RegistrationDate DATE
);

INSERT INTO Participants (ParticipantName, City, FeePaid, Discount, RegistrationDate)
VALUES
('Aisha Khan', 'Lahore', 1250.75, 100.25, '2024-01-15'),
('Bilal Ahmed', 'Karachi', 1800.40, 150.00, '2023-09-03'),
('Sara Malik', 'Islamabad', 950.20, 50.00, '2025-02-10'),
('Omar Farooq', 'Lahore', 2100.90, 200.50, '2022-11-21'),
('Hina Ali', 'Faisalabad', 700.50, 0.00, '2026-01-08'),
('Usman Raza', 'Karachi', 1600.00, 75.25, '2024-06-30'),
('Maryam Noor', 'Multan', 1100.65, 100.00, '2025-07-12'),
('Hamza Tariq', 'Lahore', 850.10, 25.10, '2023-03-19'),
('Zoya Sheikh', 'Islamabad', 1400.99, 100.99, '2026-02-05'),
('Danish Iqbal', 'Peshawar', 600.45, 0.00, '2024-12-01');

SELECT * FROM Participants;

SELECT UPPER(City) AS CityInCaps 
FROM Participants; 


--a
SELECT UPPER(ParticipantName) AS NameInCaps 
FROM Participants;  

--b
SELECT ParticipantName , len(ParticipantName) AS NameLength 
FROM Participants;  

--c
SELECT concat(ParticipantName,' | ' , City ) As ParticipantLocation
FROM Participants;  

--d
SELECT replace(ParticipantName,' ','_' ) As NameTag
FROM Participants;  

--Practice 6. ANS.  no, it only chnages in query data which is displayed 
SELECT * FROM Participants;



-----------------------------------------------------------
SELECT ROUND(84.65, 0) AS RoundedValue, 
CEILING(84.65) AS CeilingValue, 
CAST(84.65 AS INT) AS IntegerValue; 
--TASK 9  Calculate and convert participant fees 

--a
SELECT ROUND(FeePaid - Discount, 0) AS RoundedNetFee
from Participants;

--b
SELECT ceiling(FeePaid) AS CeilingFee
from Participants;

--c
SELECT cast(FeePaid as int) AS FeeAsInteger
from Participants;

--Practice 7.
-- 1. round 701.00
-- 2. ceiling 701
-- 3. cast  700
---------------------------------------------------
--TASK 10  Extract years and display dates

--a
SELECT CAST(GETDATE() AS DATE) AS CurrentDate;

--b
SELECT ParticipantName, YEAR(RegistrationDate) AS RegistrationYear
FROM Participants
ORDER BY ParticipantID;

--c
SELECT ParticipantName,
CONVERT(VARCHAR(10), RegistrationDate, 103) AS FormattedDate
FROM Participants
ORDER BY ParticipantID;
--CONVERT(data_type, expression, style)
SELECT * FROM Participants;