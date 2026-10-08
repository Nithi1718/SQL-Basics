select * from orders

select current_timestamp, GETDATE(), getutcdate(), sysutcdatetime()

select 
    *,
    cast(orderdate as date) as ordered_date,
    format(orderdate, 'dd-MM-yyyy'),
from orders



begin transaction
insert into orders values
(1086, '2003-04-23', 'Vembu',  'Printer',    'Electronics', 1, 14000,  14000, 'TamilNadu',   'Roses',   'Completed')

commit

rollback



delete from orders
where orderid in (1044,1045,1046)




CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    City VARCHAR(50)  check(city in ('chennai','cuddalore','kumbakonam'))
);

INSERT INTO Suppliers
(SupplierID, SupplierName, Email, Phone, City)
VALUES
(801, 'ABC Electronics', 'abc@gmail.com', '9000000001', 'Chennai'),
(802, 'Tech World', 'techworld@gmail.com', '9000000002', 'cuddalore')
(803, 'Digital India', 'digital@gmail.com', '9000000003', 'Mumbai'),
(804, 'Smart Suppliers', 'smart@gmail.com', '9000000004', 'Delhi'),
(805, 'Global Electronics', 'global@gmail.com', '9000000005', 'Hyderabad');


create table onikava
(
id int primary key identity(101,1),
names varchar(20) unique not null,
dates date default '2026-02-02',
age int check (age>=23)
);

insert into onikava(Names, age) values
(null,null ,23) 

select * from onikava


select * from orders

select 
    *,
    dateadd(month, 4, orderdate) as addddd,
    datepart(DAY, orderdate) as partt,
    datename(month, orderdate) montth,
    datepart(weekday, orderdate),
    datepart(week, orderdate) weeknumber,
    datename(weekday, orderdate) as weekname,
    case
        when orderdate < '2025-04-30' then 'low date'
     
    end
from orders


select
    *,
    row_number() over (order by orderid),
    rank() over (order by orderid),
    dense_rank() over( order by orderid),
    lead(Region) over (order by orderid),
    lag(unitprice) over (order by orderid),
    first_value(unitprice) over (order by orderid),
    last_value(unitprice) over (order by  orderid rows between unbounded preceding and unbounded following),
    ntile(5) over (order by  orderid),
    rank() over (partition by region order by orderid)
from Orders

select  * from onikava

begin transaction
insert into onikava(Names, age) values
('nithi' ,23),
('suresh',25)



CREATE DATABASE TINKER
USE TINKER

--- JOINS (LEFTJOIN, RIGHTJOIN, INNERJOIN, FULLJOIN, CROSSJOIN)
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    City VARCHAR(30)
);
CREATE TABLE EmployeeDepartment (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    ManagerName VARCHAR(50),
    Location VARCHAR(30)
);

INSERT INTO Employee VALUES
(101, 'Arun', 1, 35000, 'Chennai'),
(102, 'Bala', 2, 40000, 'Bangalore'),
(103, 'Karthik', 1, 38000, 'Cuddalore'),
(104, 'Divya', 3, 45000, 'Chennai'),
(105, 'Priya', 4, 42000, 'Pondicherry'),
(106, 'Rahul', 5, 50000, 'Mumbai'),
(107, 'Suresh', NULL, 32000, 'Madurai');

INSERT INTO EmployeeDepartment VALUES
(1, 'IT', 'Rajesh', 'Chennai'),
(2, 'HR', 'Kumar', 'Bangalore'),
(3, 'Finance', 'Meena', 'Chennai'),
(4, 'Sales', 'Vijay', 'Pondicherry'),
(6, 'Marketing', 'Anitha', 'Mumbai');

SELECT * FROM Employee
SELECT * FROM EmployeeDepartment

SELECT * FROM Employee CROSS JOIN EmployeeDepartment   -- CROSS JOIN AND ',' are same
SELECT * FROM Employee , EmployeeDepartment  

SELECT * FROM Employee INNER JOIN EmployeeDepartment -- INNER JOIN AND JOIN are same 
ON Employee.DepartmentID = EmployeeDepartment.DepartmentID

SELECT * FROM Employee JOIN EmployeeDepartment -- INNER JOIN AND JOIN are same 
ON Employee.DepartmentID = EmployeeDepartment.DepartmentID

SELECT * FROM Employee LEFT JOIN EmployeeDepartment 
ON Employee.DepartmentID = EmployeeDepartment.DepartmentID

SELECT * FROM Employee RIGHT JOIN EmployeeDepartment 
ON Employee.DepartmentID = EmployeeDepartment.DepartmentID

SELECT * FROM Employee full join EmployeeDepartment 
ON Employee.DepartmentID = EmployeeDepartment.DepartmentID


--- UNION AND UNION  ALL 

CREATE TABLE Employees_2025 (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Employees_2025 VALUES
(101, 'Arun', 'IT', 35000),
(102, 'Bala', 'HR', 40000),
(103, 'Karthik', 'Finance', 45000),
(104, 'Priya', 'Sales', 38000),
(105, 'Divya', 'IT', 42000);

CREATE TABLE Employees_2026 (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Employees_2026 VALUES
(104, 'Priya', 'Sales', 38000),
(105, 'Divya', 'IT', 42000),
(106, 'Rahul', 'Marketing', 46000),
(107, 'Suresh', 'HR', 39000),
(108, 'Kavi', 'Finance', 48000);


SELECT EmployeeID, Department, Salary FROM Employees_2025 
UNION 
SELECT EmployeeId, Department, salary FROM Employees_2026

select * from Employees_2025 union all select * from Employees_2026
select * from Employees_2025 union select * from Employees_2026
select * from Employees_2025 intersect select * from Employees_2026




-- MOD 
SELECT * FROM Employee
WHERE EmployeeID % 2 =0

--LENGTH
SELECT LEN('UMA')




