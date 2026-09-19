CREATE DATABASE Databases_281147487 ;
Use Databases_281147487 ;

-- only crete columbs 
CREATE TABLE CustomerDetails
(
CustomerID int Primary Key,  -- datatype is int, primary key is unique a;ways
FirstName varchar(255) Not Null,  --Not Null means input is required else error 
LastName varchar(255) Not Null,  -- datatype is string and length is 255
Addresss varchar(255) Not Null, 
City varchar(255) Not Null,
Email varchar(255) Null,
OrderDate varchar(255) Null,
);

Select * From CustomerDetails ;
-- select all values from the table


INSERT INTO CustomerDetails VALUES
(001, 'Li'   , 'Mi', 'machercaloni', 'Manga', 'mango@gmail.com','2026-04-12'),
(002, 'Moo'  , 'Toe', 'multan', 'Up','banana@gmail.com','2026-04-12'),
(003, 'Faah ', 'Poopy', 'sialkot', 'Netherland','apricot@gmail.com','2026-04-1'),
(004, 'Svendson', 'Tove', 'saggien 23', 'Sandnes','pineapple@gmail.com','2026-04-2'),
(005, 'Petterson', 'Kari', 'utrabad', 'Stavanger','peach@gmail.com','2026-04-14'),
(006, 'Son'  , 'ari', 'naginchurangi', 'Stavanger','peach@gmail.com','2026-04-9') 
;
-- primary key unique and cannot run again, so change it 
Drop TABLE CustomerDetails;  -- TO DELETE THE TABLE 

UPDATE CustomerDetails
SET Addresss = 'lahore'
WHERE CustomerID = 006;

UPDATE CustomerDetails
SET FirstName = 'Aqua',
	LastName = 'Fina'
WHERE CustomerID = 002;

SELECT CustomerID , FirstName From CustomerDetails;
-- to select the desired thing

-- DELETE
DELETE FROM CustomerDetails
WHERE FirstName = 'Aqua'
-- matched the name and delete the row
DELETE FROM CustomerDetails
WHERE FirstName Between 1 and 3;
-- matched the name and delete the row

Drop TABLE CustomerDetails;
Select * From CustomerDetails;
-- delete the database and truncate is for deleting the values and keep the table 


