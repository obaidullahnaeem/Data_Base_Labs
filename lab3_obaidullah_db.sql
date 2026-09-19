
create database obaidullah_lab3;
use obaidullah_lab3;

CREATE TABLE Students
(
StudentID int primary key,  -- datatype is string and length is 255
StudentName varchar(255),
Gender varchar(255),
City varchar(255),
Department  varchar(255),
AdmissionYear int,
GPA Decimal(3,2) --size, d lengths after decimal
);

select * from Students;

insert into Students values
(1,'Ahmed Ali','Male','Lahore', 'CS',2022,3.45),
(2,'Sara Khan','Female','Karachi','Buisness',2021,3.80),
(3,'Yoo Chaudry','Mix','Harbanspura','Music',2023,3.40),
(4,'Nilla Khan','Male','Karachi','Cs',2011,3.60),
(5,'Tameez Khan','Female','Peshawar','Buisness',2021,3.87),
(6,'Israr Khan','Female','Quetta','Buisness',2001,3.45),
(7,'Talwar Khan','Male','Islamabad','Buisness',2021,3.24),
(8,'Isa Khan','Female','Multan','It',2021,3.64),
(9,'Musa Khan','Female','Lahore','Maths',2011,3.69),
(10,'Mubashir Khan','Female','Karachi','Buisness',2021,3.80),
(11,'Eatisaam Khan','Female','Ilhaampura','Buisness',2024,2.00),
(12,'Akheer Khan','Female','Karachi','Buisness',2025,0.30);

select distinct City 
from Students;

select distinct Department 
from Students;

select distinct City,Department
from Students;

select *
from Students
where City = 'Lahore';

select *
from Students
where GPA > 3.5;

select *
from Students
where AdmissionYear= 2023;

select *
from Students
where City= 'Lahore' and Department = 'Cs';

select *
from Students
where City= 'Lahore' or City= 'Karachi';

select *
from Students
order by GPA desc;

select *
from Students
order by AdmissionYear asc;

select *
from Students
order by City asc;

select top 5  *
from Students;

select top 5  *
from Students
order by GPA Desc;

select top 50 percent *
from Students;

-----------------------------------------------------



create database LibraryDB;
use LibraryDB;

CREATE TABLE Members
(
MemberID int primary key,  -- datatype is string and length is 255
MemberName varchar(255),
City varchar(255),
MembershipType  varchar(255),
JoiningYear int,
FeePaid int
);

insert into Members values
(1,'Ahmed Ali','Lahore','Lifetime',2022,345),
(2,'El','Multan','Lifetime',2011,365),
(3,'Si','Peshwar','Annual',202,535),
(4,'Roo','Lahore','Free',2024,354),
(5,'Ara','Karachi','Monthly',2032,545),
(6,'Moo','Islamabad','Free',2002,445),
(7,'Kii','Quetta','Lifetime',2012,500),
(8,'Naa','Quetta','Free',2022,544),
(9,'Suii','Karachi','Annual',2022,345),
(10,'Laa','Fata','Lifetime',2022,322);

select * 
from Members

select distinct MembershipType 
from Members;

select *
from Members 
where JoiningYear>2020;

select *
from Members 
where City='Lahore' and MembershipType='Free';

select *
from Members 
order by FeePaid desc;

select top 3 *
from Members 
order by FeePaid desc;