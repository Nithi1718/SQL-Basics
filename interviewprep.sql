use TINKER

CREATE TABLE Original (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(30),
    City VARCHAR(30),
    Salary DECIMAL(10,2),
    Experience INT,
    Job_Role VARCHAR(40),
    Joining_Year INT
);


INSERT INTO Original
(ID, Name, Age, Gender, Department, City, Salary, Experience, Job_Role, Joining_Year)
VALUES
(1, 'Arun', 24, 'Male', 'IT', 'Chennai', 35000, 1, 'Developer', 2025),
(2, 'Priya', 26, 'Female', 'HR', 'Bangalore', 42000, 3, 'HR Executive', 2023),
(3, 'Rahul', 29, 'Male', 'Finance', 'Mumbai', 55000, 5, 'Accountant', 2021),
(4, 'Divya', 25, 'Female', 'IT', 'Chennai', 48000, 2, 'Data Analyst', 2024),
(5, 'Karthik', 31, 'Male', 'Sales', 'Hyderabad', 60000, 7, 'Sales Manager', 2019),
(6, 'Sneha', 27, 'Female', 'Marketing', 'Delhi', 45000, 4, 'Marketing Executive', 2022),
(7, 'Vijay', 23, 'Male', 'IT', 'Coimbatore', 32000, 1, 'Tester', 2025),
(8, 'Anitha', 30, 'Female', 'Finance', 'Chennai', 58000, 6, 'Financial Analyst', 2020),
(9, 'Suresh', 28, 'Male', 'HR', 'Madurai', 40000, 4, 'HR Executive', 2022),
(10, 'Meena', 26, 'Female', 'IT', 'Bangalore', 52000, 3, 'Developer', 2023),
(11, 'Ravi', 35, 'Male', 'Sales', 'Chennai', 70000, 10, 'Sales Manager', 2016),
(12, 'Kavya', 24, 'Female', 'Marketing', 'Coimbatore', 38000, 2, 'Content Writer', 2024),
(13, 'Dinesh', 32, 'Male', 'Finance', 'Delhi', 65000, 8, 'Senior Accountant', 2018),
(14, 'Lakshmi', 29, 'Female', 'IT', 'Madurai', 57000, 5, 'Data Scientist', 2021),
(15, 'Manoj', 27, 'Male', 'Sales', 'Mumbai', 46000, 4, 'Sales Executive', 2022),
(16, 'Harini', 25, 'Female', 'HR', 'Chennai', 41000, 2, 'Recruiter', 2024),
(17, 'Ajay', 34, 'Male', 'IT', 'Hyderabad', 75000, 9, 'Senior Developer', 2017),
(18, 'Swetha', 28, 'Female', 'Finance', 'Bangalore', 53000, 5, 'Financial Analyst', 2021),
(19, 'Gokul', 30, 'Male', 'Marketing', 'Chennai', 49000, 6, 'Marketing Manager', 2020),
(20, 'Nandhini', 23, 'Female', 'IT', 'Coimbatore', 33000, 1, 'Junior Developer', 2025);

-- Second highest salary
select Salary from original
order by salary desc
offset 1 row
fetch  next 1 rows only

-- Remove duplicates
select distinct city from original

--Second highest salary department wise
select * from (select
Department, 
salary,
dense_rank() over (partition by department order by salary desc) as drk
from original) as t
where drk =2

-- Cumulative sum of salary departmentwise
select * from
(select
Department,
salary,
sum(salary) over (partition by department order by id asc)  as tvk
from Original) as tt



select * from original

CREATE TABLE Employees_2025 (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Salary INT
);

INSERT INTO Employees_2025
(Emp_ID, Name, Department, City, Salary)
VALUES
(1, 'Arun', 'IT', 'Chennai', 35000),
(2, 'Priya', 'HR', 'Bangalore', 40000),
(3, 'Rahul', 'Finance', 'Mumbai', 45000),
(4, 'Divya', 'IT', 'Chennai', 50000),
(5, 'Karthik', 'Sales', 'Hyderabad', 38000),
(6, 'Sneha', 'Marketing', 'Delhi', 42000),
(7, 'Vijay', 'IT', 'Coimbatore', 32000),
(8, 'Anitha', 'Finance', 'Chennai', 55000),
(9, 'Suresh', 'HR', 'Madurai', 39000),
(10, 'Meena', 'IT', 'Bangalore', 48000);

CREATE TABLE Employees_2026 (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Salary INT
);

INSERT INTO Employees_2026
(Emp_ID, Name, Department, City, Salary)
VALUES
(1, 'Arun', 'IT', 'Chennai', 40000),
(2, 'Priya', 'HR', 'Bangalore', 45000),
(3, 'Rahul', 'Finance', 'Mumbai', 50000),
(11, 'Gokul', 'Marketing', 'Chennai', 46000),
(12, 'Nandhini', 'IT', 'Coimbatore', 36000),
(13, 'Ajay', 'Sales', 'Delhi', 52000),
(14, 'Harini', 'HR', 'Chennai', 41000),
(15, 'Manoj', 'Finance', 'Hyderabad', 47000),
(16, 'Kavya', 'Marketing', 'Bangalore', 43000),
(17, 'Dinesh', 'IT', 'Mumbai', 60000);
