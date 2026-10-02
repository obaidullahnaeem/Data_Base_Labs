create database obaid_lab5;
use obaid_lab5;

create table products
(
productid int primary key identity (1,1),
productname varchar(255),
catagory varchar(255),
price int,
quantity int  
);

insert into dbo.Products values 
('mobile', 'electronics', 100 , 5),
('bag', 'assesory', 90 , 25      ),
('pencil','stationery',69,35     ),
('tv', 'electronics', 120 , 54   ),
('pencil', 'stationery', 1 , 5    ),
('lipstick', 'makeup', 4 , 50     ),
('eyeliner', 'makeup', 9 , 50      ),
('eraser', 'stationery', 2 , 60    ),
('sharpner', 'stationery', 100 ,79),
('bottle', 'assesory', 35 , 10);


select * from Products;
drop table Products;

select min(price) as MinPrice from Products;

select max(price) as MinPrice from Products;

select count(*) as ToalProducts from Products;

select count(quantity) as ToalQuantities from Products;

select avg(price) as TotalPrice from Products;

select min(quantity) as MinQuantity from Products;
select max(quantity) as MaxQuantity from Products;

select count(catagory) as [TotalElectronics] 
from Products 
where catagory='electronics';

select sum(quantity) as [SumElectronics]
from Products
where catagory='electronics';

select max(quantity) as [HighestAssesoryPrice]
from Products
where catagory='assesory';

--k
select catagory , sum(quantity) as [HigestQuantityinCatagories]
from Products
group by catagory
having sum(quantity) > 50; 

-- agrigate fun sum , group by , having, alisisas , scaler func 
-- l
select catagory, count(productid) as [More then 2 products] from Products
group by catagory 
having count(productid) > 2;


select  catagory , avg(price) as [AVG Price > 1000]
from Products
group by catagory
having avg(price) > 100;

--n
select  catagory , sum(quantity) as [AVG Price > 1000]
from Products
where  price = 100 or price > 100
group by catagory
having sum(quantity) >50 ;








create table Employees
(
EmpId int primary key identity(1,1),
EmpName varchar(20),
Department varchar(20),
Salary decimal(10,2),
Bonus decimal (10,2),
JoinDate Date
);

INSERT INTO Employees VALUES 
('Hamza', 'IT', 1150.50, 120.00, '2021/10/12'),
('Usman', 'CS', 2650.75, 180.00, '2022/03/21'),
('Hassan', 'SE', 1950.20, 170.00, '2023/04/16'),
('Danish', 'IT', 3350.90, 320.00, '2020/12/08'),
('Fahad', 'Finance', 4250.45, 380.00, '2019/07/19'),
('Muneeb', 'HR', 2950.10, 270.00, '2021/05/06'),
('Hira', 'Marketing', 3050.60, 220.00, '2022/08/11'),
('Maryam', 'CS', 3250.30, 175.00, '2020/10/25'), 
('Shahzaib', 'Finance', 3550.80, 280.00, '2018/11/17'), 
('Talha', 'SE', 2850.50, 190.00, '2023/01/24');




select * from Employees;

select upper(EmpName) as [Uppercase Name] from Employees;

select EmpName, len(EmpName) as [Name Length] from Employees;

select EmpName, Salary, round(Salary, 0) as [Rounded Salary] from Employees;

select EmpName, Salary, ceiling(Salary) as [Ceiling Salary] from Employees;

select getdate() as [Current System Date];

select EmpName, year(JoinDate) as [Joining Year] from Employees;

select EmpName, Salary, cast(Salary as int) as [Integer Salary] from Employees;

select EmpName, JoinDate, convert(varchar, JoinDate,103) as [Formatted Join Date] from Employees;

select EmpName + ' - ' + Department as [Name and Department] from Employees;

select EmpName, replace(EmpName, ' ', '-') as [Hyphenated Name] from Employees;