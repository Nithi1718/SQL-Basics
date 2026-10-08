create table Nithish(
Id Int Identity(1,1),
Names varchar(50) Primary Key,
DOB Date Default '2026-09-20',
Mob BigInt,
Weights Decimal(5,2)
);

Insert into Nithish(Names, Mob, Weights) values
('Nithi', 9000000001, 54.9),
('Shobana', 9000000002, 52.4)

Insert into Nithish(Names, Mob, Weights) values
('Vinotha', 9000000003, 53.1),
('Kani', 9000000004, 50),
('Mani', 9000000005, 53),
('Pavi', 9000000006, 54.1),
('Suvi', 9000000007, 51.21),
('Thavi', 9000000008, 49.99)

select top  8 * from Nithish
Order by Id

Alter table Nithish
add NewNames varchar(50)

update nithish
set newnames = '     nonono    '
where newnames is null

--Text function
select
Names,
UPPER(names) as Capital,
LOWER(names) Small,
left(Mob,2),
right(Mob,3),
substring(names,2,2),
concat(id, '. ', Names, '--- ',weights),
concat_ws('. ', id, Names, Weights),
Replace(Names, 'Kani', 'manimaran')
--replace(Names,'nithi','nithishkumar')
from Nithish
order by id


--Aggregation  function

select 
sum(weights),
avg(weights),
max(weights),
min(weights),
count(weights),
count(*)
from Nithish

select 
weights,
ceiling(weights),
floor(weights),
abs(weights),
round(weights,3)
from Nithish



-- Fetch offset
select * from Nithish
order by ID 
offset 1 rows
fetch next 5 rows only


--Distinct
Select Distinct DOB  from Nithish

-- Trim LTrim RTim LPad RPad
select NewNames, lTrim(NewNames) as l, RTrim(Newnames) as r,Trim(newnames) as New from Nithish



-- coalesce 
create table Nothing
(
Names Varchar(50),
p_mobile bigint,
s_mobile bigint,
p_address varchar(200),
s_address varchar(200)
)

select * from Nothing
drop table Nothing

insert into Nothing values
('Nithish', null, 900000002, 'Chennai', NUll),
('Raja', 900000003, 900000004, NULL, 'Mogapar')

select * from Nothing
select coalesce(p_mobile, s_mobile) as mobile, coalesce(P_address, s_address) as address from Nothing




CREATE TABLE Employes (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    DateOfBirth DATE,
    JoiningDate DATE,
    LeavingDate DATE,
    CreatedDate DATETIME,
    Salary INT
);


INSERT INTO Employes
(EmployeeID, EmployeeName, DateOfBirth, JoiningDate, LeavingDate, CreatedDate, Salary)
VALUES
(1, 'Arun',  '2000-05-15', '2022-01-10', NULL, '2022-01-10 09:30:00', 30000),
(2, 'Kumar', '1999-08-20', '2023-03-15', NULL, '2023-03-15 10:15:00', 40000),
(3, 'Priya', '2001-02-10', '2024-06-20', NULL, '2024-06-20 11:00:00', 45000),
(4, 'Divya', '1998-11-25', '2021-09-05', '2025-01-15', '2021-09-05 09:00:00', 35000),
(5, 'Ravi',  '2000-12-30', '2025-02-10', NULL, '2025-02-10 10:30:00', 50000),
(6, 'Vijay', '1997-04-18', '2020-07-25', NULL, '2020-07-25 08:45:00', 55000),
(7, 'Meena', '2002-09-12', '2025-05-01', NULL, '2025-05-01 09:15:00', 32000),
(8, 'Suresh','1999-01-22', '2022-11-18', '2024-12-20', '2022-11-18 10:00:00', 38000),
(9, 'Anitha', '2001-06-05', '2024-01-08', NULL, '2024-01-08 09:45:00', 42000),
(10,'Rahul', '2000-10-28', '2023-08-12', NULL, '2023-08-12 11:30:00', 47000);

select * from Employes

-- DATEADD
select
joiningdate, 
dateadd(day,25,joiningdate) as JoinDate ,
DateOfBirth,
dateadd(month,4,dateofbirth) DOB,
leavingdate,
dateadd(year, 2, LeavingDate) Leavedate
from Employes

-- CURRENT_TIMESTAMP
SELECT CURRENT_TIMESTAMP

-- GETDATE()
SELECT GETDATE()

-- DATEPART 
SELECT
JOININGDATE,
DATEPART(DAY, JOININGDATE) AS DAYDATE,
DATEPART(MONTH, JOININGDATE) AS MONTHDATE,
DATEPART(YEAR, JOININGDATE) AS YEARDATE
FROM EMPLOYES

-- CAST DATE AND TIME 
SELECT 
CAST(GETDATE() AS DATE) AS ONLYDATE,
CAST(CURRENT_TIMESTAMP AS TIME) AS ONLYTIME

-- UTC (Universal TimeZone Conversion)
SELECT 
    GETUTCDATE() UNIVERSALDATE,
    SYSUTCDATETIME() SYSTEMUNIVERSAL,
    GETDATE()               -- DUMMY FOR REFERENCE


-- FORMAT
SELECT 
    joiningdate, 
    FORMAT(JOININGDATE, 'dd-MMM-yyyy') AS UPDATEDDATE,
    FORMAT(JOININGDATE, 'MM') AS INNUMBERS,
    FORMAT(JOININGDATE, 'MMM') AS INWORDINGS,
    FORMAT(JOININGDATE, 'yyyy') AS YEARFRAC,
    FORMAT(JOININGDATE, 'y') AS YEARMONTH,
    FORMAT(JOININGDATE, 'D') AS FULLDATE, -- WITHWEEKDAYS NAME
    FORMAT(JOININGDATE, 'd') AS CORRENTORDER,
    FORMAT(JOININGDATE, 'dd/MM/yyyy') AS CORRECTONE,
    FORMAT(JOININGDATE, 'dd/mM/yyyy') AS ALSOCORRECT,
    FORMAT(JOININGDATE, 'dd/Mm/yyyy') AS WRONGDATE
FROM Employes

SELECT FORMAT(cast(getdate() as date), 'dd-MM-yyyy')
SELECT FORMAT(cast(getutcdate() as date), 'dd-MM-yyyy')
SELECT FORMAT(cast(sysutcdatetime() as date), 'dd-MM-yyyy')
SELECT FORMAT(current_timestamp, 'dd-MMM-yyyy')

--WEEKDAY
SELECT DATEPART(WEEKDAY, '2026-09-24') AS WeekDayNumber;
SELECT DATENAME(WEEKDAY, '2026-09-24') AS WeekDayNumber;

SELECT
    JOININGDATE,
    DATENAME(WEEKDAY, JOININGDATE) AS WEEKDAYNAME 
FROM Employes



--WEEKNUM
SELECT DATEPART(WEEK, '2026-09-24') AS RESULT
SELECT DATENAME(WEEK, '2026-09-24') AS RESULT



--CASE 
SELECT
    EmployeeName,
    JoiningDate,
    CASE
        WHEN JoiningDate >= '2025-01-01'
            THEN 'New Employee'
        WHEN JoiningDate >= '2023-01-01'
            THEN 'Recent Employee'
        ELSE 'Old Employee'
    END AS EmployeeType
FROM Employes



-- NEW TABLE FOR 22/09/2026
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1, 'Arun',   'IT',    50000),
(2, 'Bala',   'IT',    60000),
(3, 'Chitra', 'IT',    60000),
(4, 'Deepak', 'HR',    40000),
(5, 'Elena',  'HR',    50000),
(6, 'Fahad',  'HR',    50000),
(7, 'Gokul',  'Sales', 30000),
(8, 'Hari',   'Sales', 45000),
(9, 'Isha',   'Sales', 60000);


-- HIGHEST ROWS CONTAINING TABLE


-- ROW_NUMBER()
SELECT 
    NAME, 
    DEPARTMENT,
    SALARY,
    ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUM,
    ROW_NUMBER() OVER (ORDER BY DEPARTMENT ASC) AS ROWNUM
FROM Employees







--- NEW TABLE (ORDERS) THAT CONTAIN 11 COLUMNS AND 43 ROWS

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount DECIMAL(10,2),
    Region VARCHAR(30),
    SalesPerson VARCHAR(50),
    OrderStatus VARCHAR(20)
);

-- Insert 43 rows
INSERT INTO Orders
(OrderID, OrderDate, CustomerName, ProductName, Category,
 Quantity, UnitPrice, TotalAmount, Region, SalesPerson, OrderStatus)
VALUES
(1001, '2025-01-05', 'Arun',   'Laptop',     'Electronics', 2, 55000, 110000, 'Chennai',     'Ravi',   'Completed'),
(1002, '2025-01-08', 'Bala',   'Mouse',      'Accessories', 3, 800,    2400, 'Cuddalore',   'Kumar',  'Completed'),
(1003, '2025-01-12', 'Chitra', 'Keyboard',   'Accessories', 2, 1500,   3000, 'Chennai',     'Priya',  'Pending'),
(1004, '2025-01-15', 'Deepak', 'Monitor',    'Electronics', 1, 18000,  18000, 'Bangalore',   'Ravi',   'Completed'),
(1005, '2025-01-18', 'Elena',  'Printer',    'Electronics', 1, 12000,  12000, 'Pondicherry', 'Kumar',  'Cancelled'),
(1006, '2025-01-22', 'Fahad',  'Laptop',     'Electronics', 1, 65000,  65000, 'Madurai',     'Priya',  'Completed'),
(1007, '2025-01-25', 'Gokul',  'Headphone',  'Accessories', 4, 2000,    8000, 'Chennai',     'Ravi',   'Completed'),
(1008, '2025-01-28', 'Hari',   'Tablet',     'Electronics', 2, 25000,  50000, 'Coimbatore',  'Kumar',  'Pending'),
(1009, '2025-02-02', 'Isha',   'Mobile',     'Electronics', 1, 30000,  30000, 'Salem',       'Priya',  'Completed'),
(1010, '2025-02-05', 'Jaya',   'Mouse',      'Accessories', 5, 750,     3750, 'Chennai',     'Ravi',   'Completed'),

(1011, '2025-02-08', 'Karthik','Keyboard',   'Accessories', 3, 1200,    3600, 'Cuddalore',   'Kumar',  'Pending'),
(1012, '2025-02-11', 'Lakshmi','Monitor',    'Electronics', 2, 15000,  30000, 'Madurai',     'Priya',  'Completed'),
(1013, '2025-02-14', 'Manoj',  'Laptop',     'Electronics', 1, 70000,  70000, 'Chennai',     'Ravi',   'Completed'),
(1014, '2025-02-17', 'Naveen', 'Printer',    'Electronics', 2, 10000,  20000, 'Bangalore',   'Kumar',  'Completed'),
(1015, '2025-02-20', 'Oviya',  'Headphone',  'Accessories', 2, 2500,    5000, 'Pondicherry', 'Priya',  'Pending'),
(1016, '2025-02-23', 'Prakash','Tablet',     'Electronics', 1, 22000,  22000, 'Coimbatore',  'Ravi',   'Completed'),
(1017, '2025-02-26', 'Rahul',  'Mobile',     'Electronics', 2, 28000,  56000, 'Salem',       'Kumar',  'Completed'),
(1018, '2025-03-01', 'Sanjay', 'Mouse',      'Accessories', 4, 900,     3600, 'Chennai',     'Priya',  'Cancelled'),
(1019, '2025-03-04', 'Tamil',  'Keyboard',   'Accessories', 1, 1800,    1800, 'Cuddalore',   'Ravi',   'Completed'),
(1020, '2025-03-07', 'Uma',    'Monitor',    'Electronics', 3, 16000,  48000, 'Madurai',     'Kumar',  'Completed'),

(1021, '2025-03-10', 'Vijay',  'Laptop',     'Electronics', 2, 60000, 120000, 'Chennai',     'Priya',  'Pending'),
(1022, '2025-03-13', 'Wasim',  'Printer',    'Electronics', 1, 14000,  14000, 'Bangalore',   'Ravi',   'Completed'),
(1023, '2025-03-16', 'Xavier', 'Headphone',  'Accessories', 3, 1800,    5400, 'Pondicherry', 'Kumar',  'Completed'),
(1024, '2025-03-19', 'Yamini', 'Tablet',     'Electronics', 2, 24000,  48000, 'Coimbatore',  'Priya',  'Completed'),
(1025, '2025-03-22', 'Zahir',  'Mobile',     'Electronics', 1, 35000,  35000, 'Salem',       'Ravi',   'Pending'),
(1026, '2025-03-25', 'Anitha', 'Mouse',      'Accessories', 6, 700,     4200, 'Chennai',     'Kumar',  'Completed'),
(1027, '2025-03-28', 'Bharath','Keyboard',   'Accessories', 2, 1400,    2800, 'Cuddalore',   'Priya',  'Completed'),
(1028, '2025-04-01', 'Cathy',  'Monitor',    'Electronics', 1, 20000,  20000, 'Madurai',     'Ravi',   'Cancelled'),
(1029, '2025-04-04', 'Dinesh', 'Laptop',     'Electronics', 1, 58000,  58000, 'Chennai',     'Kumar',  'Completed'),
(1030, '2025-04-07', 'Eswar',  'Printer',    'Electronics', 3, 11000,  33000, 'Bangalore',   'Priya',  'Completed'),

(1031, '2025-04-10', 'Firoz',  'Headphone',  'Accessories', 2, 2200,    4400, 'Pondicherry', 'Ravi',   'Pending'),
(1032, '2025-04-13', 'Ganesh', 'Tablet',     'Electronics', 1, 26000,  26000, 'Coimbatore',  'Kumar',  'Completed'),
(1033, '2025-04-16', 'Harini', 'Mobile',     'Electronics', 2, 32000,  64000, 'Salem',       'Priya',  'Completed'),
(1034, '2025-04-19', 'Imran',  'Mouse',      'Accessories', 3, 850,     2550, 'Chennai',     'Ravi',   'Completed'),
(1035, '2025-04-22', 'Janani', 'Keyboard',   'Accessories', 4, 1300,    5200, 'Cuddalore',   'Kumar',  'Pending'),
(1036, '2025-04-25', 'Kishore','Monitor',    'Electronics', 2, 17000,  34000, 'Madurai',     'Priya',  'Completed'),
(1037, '2025-04-28', 'Latha',  'Laptop',     'Electronics', 1, 62000,  62000, 'Chennai',     'Ravi',   'Completed'),
(1038, '2025-05-01', 'Mohan',  'Printer',    'Electronics', 1, 13000,  13000, 'Bangalore',   'Kumar',  'Completed'),
(1039, '2025-05-04', 'Nithya', 'Headphone',  'Accessories', 5, 1900,    9500, 'Pondicherry', 'Priya',  'Pending'),
(1040, '2025-05-07', 'Omkar',  'Tablet',     'Electronics', 2, 23000,  46000, 'Coimbatore',  'Ravi',   'Completed'),

(1041, '2025-05-10', 'Pavan',  'Mobile',     'Electronics', 1, 29000,  29000, 'Salem',       'Kumar',  'Completed'),
(1042, '2025-05-13', 'Ramesh', 'Mouse',      'Accessories', 4, 950,     3800, 'Chennai',     'Priya',  'Completed'),
(1043, '2025-05-16', 'Suresh', 'Keyboard',   'Accessories', 2, 1600,    3200, 'Cuddalore',   'Ravi',   'Pending');




-- ROW_NUMBER(), RANK(), DENSE_RANK(), LEAD(), LAG(), FIRST_VALUE() LAST_VALUE(), NTILE(), PARTITION BY 
SELECT * FROM Orders

SELECT * FROM ORDERS

SELECT 
*,
ROW_NUMBER() OVER (ORDER BY  ORDERID ASC) AS RM,
RANK() OVER (ORDER BY  ORDERID ASC) AS RK,
DENSE_RANK() OVER (ORDER BY  ORDERID ASC) AS DRK,
FIRST_VALUE(UNITPRICE) OVER (ORDER BY  ORDERID ASC) AS FN,
LAST_VALUE(UNITPRICE) OVER (ORDER BY  ORDERID ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LN,
LEAD(UNITPRICE) OVER (ORDER BY  ORDERID ASC) AS LD,
LAG(UNITPRICE) OVER (ORDER BY  ORDERID ASC) AS LG,
NTILE(4) OVER (ORDER BY  ORDERID ASC) AS NT,
ROW_NUMBER() OVER ( PARTITION BY PRODUCTNAME ORDER BY  ORDERID ASC) AS PART_RM
FROM Orders
ORDER BY ORDERID



SELECT 
    ProductName,
    SUM(UNITPRICE) AS SUMAS,
    MAX(UNITPRICE) AS MAXI,
    MIN(UNITPRICE) AS MINI,
    AVG(UNITPRICE) AS AVERAGE
FROM ORDERS
GROUP BY PRODUCTNAME


SELECT 
    ProductName,
    SUM(UNITPRICE) AS SUMAS,
    MAX(UNITPRICE) AS MAXI,
    MIN(UNITPRICE) AS MINI,
    AVG(UNITPRICE) AS AVERAGE
FROM ORDERS
GROUP BY PRODUCTNAME
HAVING MIN(UNITPRICE)>2000 



    
