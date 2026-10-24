create database ass1_obaidullah;
use ass1_obaidullah;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2),
    Email VARCHAR(100)
);

INSERT INTO Employee (EmpID, EmpName, Department, City, Age, Salary, Email)
VALUES
(1001, 'Ahmed Khan', 'IT', 'Lahore', 28, 85000, 'ahmed@company.com'),
(1002, 'Sara Malik', 'HR', 'Karachi', 34, 72000, 'sara@company.com'),
(1003, 'Bilal Raza', 'IT', 'Islamabad', 26, 95000, 'bilal@company.com'),
(1004, 'Hina Tariq', 'Finance', 'Lahore', 41, 120000, 'hina@company.com'),
(1005, 'Usman Ali', 'Marketing', 'Faisalabad', 30, 68000, 'usman@company.com'),
(1006, 'Ayesha Noor', 'IT', 'Lahore', 24, 55000, 'ayesha@company.com'),
(1007, 'Zain Abbas', 'Finance', 'Karachi', 37, 110000, 'zain@company.com'),
(1008, 'Maryam Iqbal', 'HR', 'Lahore', 29, 64000, 'maryam@company.com');


--q1
select  EmpName, City, Salary from Employee
where Salary>70000 and City!='Karachi';


--q2
SELECT DISTINCT City
FROM Employee
where Department = 'IT'or Department = 'HR' ;


--q3
 --syntax >>> UPDATE <table_name> SET <column>
update Employee
set Salary = 100000.00
where Department = 'Finance'and Age > 40;


--q4
INSERT INTO Employee (EmpID, EmpName, Department, City, Age, Salary, Email)
VALUES
(1009,'Hamza Sheikh','Finance',Null,Null,78000,Null);

SELECT * FROM Employee;
--------------------------------------------------------------------------
--q5
create table Attendance (
    AttendanceID int Primary key identity (1,1),
    EmpID int Not Null,
    AttendanceDate date,
    Status varchar(10),
    HoursWorked INT CHECK (HoursWorked BETWEEN 0 AND 12), 
    -- check is a new thing not done before in class or lab
);
select * from Attendance;

ALTER TABLE Attendance
alter column Status VARCHAR(15);

ALTER table Attendance
add Remarks varchar(50);

drop table Attendance;
select * from Attendance;
---------------------------------------------------------
--q6
select  ProductName, Category, Price 
from Product
where Category ='Electronics' and
      price between 5000 and 100000 ;

--q7
select distinct Supplier
from Product
where Quantity > 100;


--q8
delete from Product
where Quantity = 0 or Rating < 3.9;


-------------------------------------------
--q9
Update Product
set Price = Price- 3000 , Quantity = 20
where Rating >= 4.3 and 
Supplier = 'HomeDecor' and
Category = 'Furniture';

select  ProductName, Price, Quantity from Product
where Category = 'Furniture';


--q10
ALTER TABLE Product RENAME COLUMN Quantity TO StockQty;
ALTER TABLE Product RENAME TO Inventory;
TRUNCATE TABLE Inventory;
