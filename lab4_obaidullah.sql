create database "databaselab4"
use "databaselab4"

create table Students 
(
rollnum int primary key identity (1,1),  
stname varchar(255),
city varchar(255),
course varchar (255),
marks int,
phonenum varchar (255)
);

insert into Students  (stname,city,marks,phonenum)
values
( 'Ali', 'Karachi', 78, '03001234567'),
( 'Sara', 'Lahore', 85, '03111234567'),
( 'Ahmed', 'Karachi', 67, '03221234567'),
( 'Ayesha', 'Islamabad', 92, '03331234567'),
( 'Bilal', 'Lahore', 73, '03441234567'),
( 'Hina', 'Peshawar', 64, '03551234567'),
( 'Usman', 'Karachi', 59, '03661234567'),
( 'Noor', 'Quetta', 88, '03771234567'),
( 'Anaya', 'Islamabad', 76, '03881234567'),
( 'Hamza', 'Lahore', 69, '03991234567'),
( 'Zain', 'Karachi', 81, '03011234567'),
('Maham', 'Lahore', 74, '03121234567'),
('Hassan', 'Islamabad', 90, '03231234567'),
( 'Fatima', 'Peshawar', 68, '03341234567'),
( 'Saad', 'Quetta', 77, '03451234567');

select * 
from Students;

truncate table Students ;

drop table Students;

select * from Students
where  stname  like 'A%' ;


select *  from Students
where  stname   like '%a';


select *  from Students
where  stname   like '%ma%';


select *  from Students
where  stname   like '_a%';


select * from Students
where city in ('Lahore','Karachi');


select * from Students
where marks between 70 and 85 ;


select stname as [StudentName] ,
marks as [Marks] 
from Students;



select city as [City] ,
phonenum as [PhoneNum] 
from Students;


select *  from Students
where  stname   like '____';


select *  from Students
where  City = 'Karachi' and
marks between 60 and 90 ;



select * from Students
where City in ('Lahore','Quetta','Islamabad');







--------------------------------------------------------




CREATE TABLE Employee (
    EmployeeID int PRIMARY KEY IDENTITY(1,1),
    EmpName varchar(20),
    Department varchar(20),
    Salary int,
    City varchar(15)
);

INSERT INTO Employee VALUES
('Obaid','Psychology',98000,'Lahore'),
('Ali','ARTS',160000,'Sheikhupura'),
('Al','Business',4000,'Karachi'),
('Asl','Law',9000,'Lalaland'),
('Ram','PolScience',20000,'Nankana'),
('Abdullah','CS',70000,'Chokiwal');

SELECT * FROM Employee;

SELECT * FROM Employee WHERE EmpName LIKE 'S%';

SELECT * FROM Employee WHERE EmpName LIKE '%I';

SELECT * FROM Employee WHERE Department IN ('ARTS','Law');

SELECT * FROM Employee WHERE Salary BETWEEN 60000 AND 90000;

SELECT EmpName AS [Name], Salary AS [Pese]
FROM Employee;

SELECT * FROM Employee WHERE City LIKE '%a%';

SELECT * FROM Employee WHERE EmpName LIKE '_a%';