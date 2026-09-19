CREATE DATABASE obaid_281147487 ;
Use obaid_281147487 ;

-- only crete columbs 
CREATE TABLE Student
(
PersonID varchar(255),  -- datatype is string and length is 255
LastName varchar(255),
FirstName varchar(255),
Age varchar(255),
City varchar(255)
);

Select * From Student ;
-- select all values from the table


INSERT INTO Student VALUES
('001', 'Li', 'Mi', '10', 'Manga'),
('002', 'Moo', 'Toe', '23', 'Up'),
('003', 'Faah', 'Poopy', '20', 'Netherland'),
('006', 'Svendson', 'Tove', 'Borgvn 23', 'Sandnes'),
('004', 'Petterson', 'Kari', 'Strogt 20', 'Stavanger')
;
truncate table Student ; -- to delete the all values