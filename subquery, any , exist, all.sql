----- Subquery -----
select * from orders

select distinct orderId from orders
where TotalAmount > ( select avg(Totalamount) from orders)

select * from employees

select Name from employees
where salary < (select max(salary) from employees)

select * from students

select stu_name, group_name, locality from students
where tenth_marks > (select min(tenth_marks) from students)


------ ANY, ALL ------

SELECT STU_NAME, AGE FROM STUDENTS
WHERE AGE < ANY (SELECT AGE FROM STUDENTS WHERE AGE >22)

SELECT STU_NAME, AGE FROM STUDENTS
WHERE AGE < ALL (SELECT AGE FROM STUDENTS WHERE AGE >22)


SELECT * FROM ORDERS

SELECT CUSTOMERNAME, PRODUCTNAME, SALESPERSON, UNITPRICE FROM ORDERS 
WHERE UNITPRICE > ALL ( SELECT UNITPRICE FROM ORDERS WHERE UNITPRICE < 5000)
ORDER BY UNITPRICE;

SELECT CUSTOMERNAME, PRODUCTNAME, SALESPERSON, UNITPRICE FROM ORDERS 
WHERE UNITPRICE > ANY ( SELECT UNITPRICE FROM ORDERS WHERE UNITPRICE < 5000)
ORDER BY UNITPRICE;


SELECT * FROM PAYMENTS;

UPDATE PAYMENTS
SET TRANSACTIONID = 'TXN1001', CURRENCY = 'INR'
WHERE CUSTOMERID = 1;


SELECT CUSTOMERID, PAYMENTMETHOD FROM PAYMENTS
WHERE PAYMENTMETHOD = ANY (SELECT PAYMENTMETHOD FROM PAYMENTS WHERE PaymentMethod IN ('UPI', 'CASH'))
ORDER BY CUSTOMERID

SELECT * FROM PRODUCTS

SELECT PRODUCTNAME, SUPPLIERID, PRICE FROM PRODUCTS
WHERE PRICE > ALL (
SELECT PRICE FROM PRODUCTS
WHERE COLOR = 'WHITE')





----- EXIST AND NOT EXIST -----

select * from Employees_2025 inner join Employees_2026
on Employees_2025.Department =  Employees_2026.Department

select * from Employee join EmployeeDepartment
on Employee.DepartmentID = EmployeeDepartment.DepartmentID


select * from Employees_2025 as e1
where not exists ( select 1 from Employees_2026 as e2
where e1.EmployeeID = e2.EmployeeID)

CREATE TABLE Employeess (
    employee_id INT PRIMARY KEY,
    manager_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employeess
VALUES
(1, NULL, 'Arun',   'Management', 80000),
(2, 1,    'Bala',   'IT',         60000),
(3, 1,    'Kumar',  'HR',         55000),
(4, 2,    'Ravi',   'IT',         45000),
(5, 2,    'Suresh', 'IT',         50000),
(6, 3,    'Mani',   'HR',         40000),
(7, 3,    'Vijay',  'HR',         42000),
(8, 4,    'Ajay',   'IT',         35000),
(9, 4,    'Dinesh', 'IT',         38000),
(10, 5,   'Raj',    'IT',         36000),
(11, 5,   'Mohan',  'IT',         37000),
(12, 6,   'Hari',   'HR',         33000),
(13, 6,   'Gokul',  'HR',         34000),
(14, 17,   'Karthik', 'HR',        32000),
(15, 17,   'Praveen', 'HR',        31000);

drop table Employeess
select * from employeess


select salary from employeess as n
where exists (select 1 from employeess as m
where n.employee_id = m.manager_id)