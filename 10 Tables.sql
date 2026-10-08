

CREATE TABLE Students(
Stu_Name varchar(30),
Roll_Number Int,
Group_Name varchar(30),
Age Int,
Mobile BigInt,
Locality varchar(30),
Monthly_Income BigInt,
Father_Name varchar(30),
Mother_Name varchar(30),
Tenth_Marks Int
);

select * from Students

Insert into Students Values
('Abinaya',01,'B.Ed',24,9838937933,'Chavadi',800000,'Mano','Sudha',445),
('Dhivya',02,'B.Ed',24,9383746292,'Pattampakkam',650000,'Kumar','Anu',433),
('Kaviya',03,'Maths',23,9380205892,'Ramapuram',600000,'Vijay','Vijaya',438),
('Kayalvizhi',04,'Maths',22,8934689264,'Cuddalore',700000,'Suthan','Kani',444),
('Mugilan',05,'B.Ed',22,8523995704,'Palayamkottai',1000000,'Raja','Seetha',390),
('Nameera',06,'Maths',24,9823954637,'Pattampakkam',900000,'Abdul','Fathima',405),
('Nithish',07,'Data Science',23,8610315896,'Alappakkam',750000,'Sakthivel','Beema',399),
('Preethi',08,'B.Ed',23,8638491763,'Pondy',900000,'Kannan','Subi',406),
('Priyadharshini',09,'Maths',22,6366729846,'Puliyur',850000,'Rajendran','kamsala',419),
('Surya',10,'Maths',23,9360205982,'Siruvanthadu',800000,'Thirunavukarasu','Sudha',390)




Create Table Employees(
Emp_Id Int,
First_Name varchar(30),
Last_Name varchar(30),
Email varchar(30),
Phone BigInt,
Job_Role varchar(30),
Shift_Type Int,
Hiring_Date Date,
City varchar(50)
);

select * from Employees

insert into Employees values
(1101,'Soundar','R','soundar@gmail.com',7235673827,'DSP',1,'2027-05-17','Theni')

insert into Employees values
(1203,'Selva','S','selvaaa@gmail.com',8523996527,'VAO',3,'2027-06-15','Thiruvannamalai'),
(1102,'Pandian','S','Pandian@gmail.com',9887343234,'RI',1,'2028-05-30','Theni'),
(1011, 'Ravi', 'Kumar', 'ravi@company.com', 8000000001, 'Manager', 1, '2022-01-10', 'Chennai'),
(1012, 'Priya', 'Raj', 'priya@company.com', 8000000002, 'Analyst', 2, '2023-02-15', 'Bangalore'),
(1013, 'Arun', 'Das', 'arun@company.com', 8000000003, 'Developer', 1, '2023-03-20', 'Chennai'),
(1024, 'Sneha', 'Rao', 'sneha@company.com', 8000000004, 'HR Executive', 2, '2022-05-12', 'Hyderabad'),
(1055, 'Vijay', 'Sharma', 'vijay@company.com', 8000000005, 'Sales Executive', 2, '2024-01-08', 'Mumbai'),
(1036, 'Meena', 'Babu', 'meena@company.com', 8000000006, 'Accountant', 3, '2023-07-14', 'Madurai'),
(1007, 'Karthik', 'Ravi', 'karthik@company.com', 8000000007, 'Developer', 3, '2024-02-18', 'Chennai');

select * from Employees


drop table Customers

create table Customers(
Customer_ID Int,
FirstName varchar(50),
LastName varchar(50),
Email varchar(50),
Phone BigInt,
Gender varchar(50),
DatefBirth varchar(50),
City varchar(50),
state_name varchar(50),
Country varchar(50)
);

select * from Customers

insert into Customers values
(1,'Soniya','Jalli','soniyajalli@gmail.com',8000000001,'Female','2026-02-19','Cuddalore','Tamil Nadu','India'),
(2, 'Priya', 'Sharma', 'priya@gmail.com', 9876543211, 'Female', '2002-08-20', 'Bangalore', 'Karnataka', 'India'),
(3, 'Rahul', 'Singh', 'rahul@gmail.com', 9876543212, 'Male', '2000-03-15', 'Mumbai', 'Maharashtra', 'India'),
(4, 'Divya', 'Rajan', 'divya@gmail.com', 9876543213, 'Female', '2003-01-25', 'Coimbatore', 'Tamil Nadu', 'India'),
(5, 'Karthik', 'Ravi', 'karthik@gmail.com', 9876543214, 'Male', '1999-11-10', 'Madurai', 'Tamil Nadu', 'India'),
(6, 'Sneha', 'Patel', 'sneha@gmail.com', 9876543215, 'Female', '2001-06-18', 'Hyderabad', 'Telangana', 'India'),
(7, 'Vijay', 'Kumar', 'vijay@gmail.com', 9876543216, 'Male', '1998-09-05', 'Delhi', 'Delhi', 'India'),
(8, 'Anjali', 'Das', 'anjali@gmail.com', 9876543217, 'Female', '2002-12-30', 'Kolkata', 'West Bengal', 'India'),
(9, 'Suresh', 'Babu', 'suresh@gmail.com', 9876543218, 'Male', '2000-07-22', 'Pune', 'Maharashtra', 'India'),
(10, 'Meena', 'Krishnan', 'meena@gmail.com', 9876543219, 'Female', '2003-04-14', 'Salem', 'Tamil Nadu', 'India');






create table Products(
ProductID Int,
ProductName varchar(100),
CategoryId Int,
SupplierId Int,
Price Decimal(12,2),
StockQuantity Int,
Brand varchar(50),
Model varchar(50),
Color varchar(50),
WarrentYears Int
);

select * from Products

insert into Products values
(1,'Laptop',1,1,45000.00,80,'Asus','Vivobook','Silver',5),
(2, 'Smartphone', 2, 2, 25000.00, 40, 'Samsung', 'Galaxy A55', 'Blue', 1),
(3, 'Headphones', 3, 3, 3500.00, 60, 'Sony', 'WH-CH520', 'Black', 1),
(4, 'Keyboard', 4, 4, 1800.00, 50, 'Logitech', 'K380', 'White', 1),
(5, 'Mouse', 4, 5, 900.00, 75, 'HP', 'X1000', 'Black', 1),
(6, 'Tablet', 2, 6, 30000.00, 30, 'Lenovo', 'Tab M11', 'Grey', 1),
(7, 'Monitor', 5, 7, 15000.00, 20, 'LG', '24MP60', 'Black', 2),
(8, 'Smartwatch', 6, 8, 8000.00, 35, 'Noise', 'ColorFit', 'Silver', 1),
(9, 'Printer', 7, 9, 12000.00, 15, 'Canon', 'Pixma G3010', 'Black', 1),
(10, 'Camera', 8, 10, 55000.00, 10, 'Canon', 'EOS 1500D', 'Black', 2);








create table Categories(
CategoryId Int,
CategoryName varchar(50),
Descriptions varchar(500),
ParentCategoryId Int,
DiscountPercent Decimal(10,2),
Statuses varchar(50),
CreatedDate Date,
UpdatedDate Date,
ManagerName varchar(50),
Department varchar(50)
);

select * from Categories


insert into Categories values
(1,'Laptops','Laptop Computers',NULL,5.5,'Active','2011-11-03','2012-12-31','Priya','Electronics'),
(2, 'Mobiles', 'Mobile devices', NULL, 8.00, 'Active', '2024-02-15', '2026-01-05', 'Sanjay', 'Electronics'),
(3, 'Headphones', 'Audio devices', 3, 12.00, 'Active', '2024-03-20', '2026-02-10', 'Meena', 'Audio'),
(4, 'Accessories', 'Computer accessories', NULL, 15.00, 'Active', '2024-04-12', '2026-02-20', 'Arun', 'Accessories'),
(5, 'Monitors', 'Computer monitors', 5, 7.00, 'Active', '2024-05-05', '2026-03-01', 'Priya', 'Electronics'),
(6, 'Smartwatches', 'Wearable devices', NULL, 10.00, 'Active', '2024-06-18', '2026-03-10', 'Vijay', 'Wearables'),
(7, 'Printers', 'Printing devices', NULL, 9.00, 'Active', '2024-07-22', '2026-04-01', 'Karthik', 'Office'),
(8, 'Cameras', 'Digital cameras', 8, 5.00, 'Active', '2024-08-30', '2026-04-15', 'Suresh', 'Photography'),
(9, 'Speakers', 'Audio speakers', 9, 11.00, 'Active', '2024-09-14', '2026-05-01', 'Divya', 'Audio'),
(10, 'Gaming', 'Gaming products', 10, 13.00, 'Active', '2024-10-25', '2026-05-15', 'Rahul', 'Gaming');









create table Payments(
PaymentId Int,
OrderId Int,
CustomerId Int,
PaymentDate Date,
Amount Decimal(10,2),
PaymentMethod varchar(50),
TransactionId varchar(50),
PaymentStatus varchar(50),
Currency varchar(50),
PaymentGateWay varchar(50)
);

select * from Payments

insert into Payments values
(1, 101, 1101,'2020-10-18',512.6,'UPI','X8S7S98D','Success','Rupees','Gpay'),
(2, 102, 2, '2026-08-03', 25000.00, 'Card', 'TXN1002', 'Success', 'INR', 'Stripe'),
(3, 103, 3, '2026-08-05', 3500.00, 'UPI', 'TXN1003', 'Success', 'INR', 'Razorpay'),
(4, 104, 4, '2026-08-07', 1800.00, 'Cash', 'TXN1004', 'Success', 'INR', 'Offline'),
(5, 105, 5, '2026-08-10', 1800.00, 'UPI', 'TXN1005', 'Success', 'INR', 'Razorpay'),
(6, 106, 6, '2026-08-12', 30000.00, 'Card', 'TXN1006', 'Success', 'INR', 'Stripe'),
(7, 107, 7, '2026-08-15', 15000.00, 'UPI', 'TXN1007', 'Success', 'INR', 'Razorpay'),
(8, 108, 8, '2026-08-18', 8000.00, 'Card', 'TXN1008', 'Pending', 'INR', 'Stripe'),
(9, 109, 9, '2026-08-20', 12000.00, 'UPI', 'TXN1009', 'Success', 'INR', 'Razorpay'),
(10, 110, 10, '2026-08-22', 55000.00, 'Card', 'TXN1010', 'Success', 'INR', 'Stripe');







create table Reviews(
ReviewID Int,
ProductId Int,
CustomerId Int,
Rating Int,
ReviewTitle varchar(50),
ReviewText varchar(50),
ReviewDate Date,
VerifiedPurchase varchar(50),
HelpfulVotes Int,
ReviewStatus varchar(50)
);

select * from Reviews

insert into Reviews values
(1,1,1,4,'Product','Very Good','2022-10-11','Yes',2,'Published'),
(2, 2, 2, 4, 'Good Phone', 'Camera and battery are good', '2026-08-07', 'Yes', 18, 'Published'),
(3, 3, 3, 5, 'Great Sound', 'Sound quality is excellent', '2026-08-09', 'Yes', 30, 'Published'),
(4, 4, 4, 4, 'Nice Keyboard', 'Comfortable for typing', '2026-08-11', 'Yes', 12, 'Published'),
(5, 5, 5, 3, 'Average Mouse', 'Works well for normal use', '2026-08-12', 'Yes', 8, 'Published'),
(6, 6, 6, 5, 'Good Tablet', 'Display quality is great', '2026-08-14', 'Yes', 20, 'Published'),
(7, 7, 7, 4, 'Good Monitor', 'Clear display', '2026-08-16', 'Yes', 15, 'Published'),
(8, 8, 8, 4, 'Useful Watch', 'Good features', '2026-08-19', 'Yes', 10, 'Published'),
(9, 9, 9, 5, 'Good Printer', 'Easy to use', '2026-08-21', 'Yes', 22, 'Published'),
(10, 10, 10, 5, 'Excellent Camera', 'Very good picture quality', '2026-08-23', 'Yes', 35, 'Published');








create table Shipments(
ShipmentId Int,
OrderId Int,
CarrierName varchar(50),
TrackingNumber BigInt,
ShippingDate Date,
DeliveryDate Date,
ShippingCost Decimal(10,2),
ShippingStatus varchar(50),
DeliveryCity varchar(50),
DeliveryCountry varchar(50)
);

select * from Shipments

insert into Shipments values
(1,101,'Blue Dart', 001, '2022-02-02','2022-03-02',234, 'Delivered','Chennai','Colombia'),
(2, 102, 'DTDC', 10002, '2026-08-04', '2026-08-06', 150.00, 'Delivered', 'Bangalore', 'India'),
(3, 103, 'Delhivery', 10003, '2026-08-06', NULL, 120.00, 'Shipped', 'Mumbai', 'India'),
(4, 104, 'BlueDart', 1000, '2026-08-08', '2026-08-10', 100.00, 'Delivered', 'Coimbatore', 'India'),
(5, 105, 'DTDC', 0078, '2026-08-11', NULL, 80.00, 'Processing', 'Madurai', 'India'),
(6, 106, 'Delhivery', 10006, '2026-08-13', NULL, 180.00, 'Shipped', 'Hyderabad', 'India'),
(7, 107, 'BlueDart', 10007, '2026-08-16', '2026-08-18', 150.00, 'Delivered', 'Delhi', 'India'),
(8, 108, 'DTDC', 10008, '2026-08-19', NULL, 120.00, 'Processing', 'Kolkata', 'India'),
(9, 109, 'Delhivery', 10009, '2026-08-21', NULL, 140.00, 'Shipped', 'Pune', 'India'),
(10, 110, 'BlueDart', 10010, '2026-08-23', '2026-08-25', 200.00, 'Delivered', 'Salem', 'India');








create table Suppliers(
SupplierId Int,
SupplierName varchar(50),
ContactPerson varchar(50),
Email varchar(60),
Phone BigInt,
AddressLine varchar(50),
City varchar(50),
State varchar(50),
Country varchar(50),
Ratings Int
);

select * from Suppliers

insert into Suppliers values
(1,'Suresh','Gopal','suresh@gmail.com',9876543210,'Govind Street','chennai','Tamil Nadu','India',5),
(2, 'MobileHub', 'Amit Kumar', 'amit@mobilehub.com', 9000000002, 'Anna Nagar', 'Chennai', 'Tamil Nadu', 'India', 4),
(3, 'AudioPlus', 'David Lee', 'david@audioplus.com', 9000000003, 'Brigade Road', 'Bangalore', 'Karnataka', 'India', 4),
(4, 'CompWorld', 'Raj Patel', 'raj@compworld.com', 9000000004, 'Ring Road', 'Mumbai', 'Maharashtra', 'India', 4),
(5, 'HP Supplies', 'Mike John', 'mike@hpsupplies.com', 9000000005, 'Park Street', 'Kolkata', 'West Bengal', 'India', 4),
(6, 'Lenovo Store', 'Anil Das', 'anil@lenovostore.com', 9000000006, 'Banjara Hills', 'Hyderabad', 'Telangana', 'India', 4),
(7, 'LG Distributors', 'Siva Raj', 'siva@lgdist.com', 9000000007, 'RS Puram', 'Coimbatore', 'Tamil Nadu', 'India', 4),
(8, 'Noise Retail', 'Vishal Shah', 'vishal@noiseretail.com', 9000000008, 'FC Road', 'Pune', 'Maharashtra', 'India', 4),
(9, 'Canon India', 'Rohit Mehta', 'rohit@canonindia.com', 9000000009, 'Nehru Place', 'Delhi', 'Delhi', 'India', 4),
(10, 'Camera World', 'Sanjay Rao', 'sanjay@cameraworld.com', 9000000010, 'Commercial Street', 'Bangalore', 'Karnataka', 'India', 4);







create table Orderss(
OrderId Int,
CustomerId Int,
ProductId Int,
Quantity Int,
UnitPrice Decimal(10,2),
Discount Decimal(10,2),
Tax Decimal(10,2),
TotalPrice Decimal(10,2),
ReturnStatus varchar(50),
DeliveryStatus varchar(50)
);

select * from Orderss

insert into Orderss values
(1, 101, 1, 1, 10.09, 5.25, 18.09, 15.50, 'No', 'Delivered'),
(2, 102, 2, 1, 25000.00, 2000.00, 4140.00, 27140.00, 'No', 'Delivered'),
(3, 103, 3, 1, 3500.00, 300.00, 576.00, 3776.00, 'No', 'Shipped'),
(4, 104, 4, 1, 1800.00, 100.00, 306.00, 2006.00, 'No', 'Delivered'),
(5, 105, 5, 2, 900.00, 100.00, 289.00, 1989.00, 'No', 'Processing'),
(6, 106, 6, 1, 30000.00, 2500.00, 4950.00, 32450.00, 'No', 'Shipped'),
(7, 107, 7, 1, 15000.00, 1000.00, 2520.00, 16520.00, 'No', 'Delivered'),
(8, 108, 8, 1, 8000.00, 500.00, 1350.00, 8850.00, 'No', 'Processing'),
(9, 109, 9, 1, 12000.00, 800.00, 2016.00, 13216.00, 'No', 'Shipped'),
(10, 110, 10, 1, 55000.00, 4000.00, 9180.00, 60180.00, 'No', 'Delivered');





select * from Students
select * from Employees
select * from Customers
select * from Products
select * from Categories
select * from Payments
select * from Reviews
select * from Shipments
select * from Suppliers
select * from Orderss

--text functions 

select 
	stu_name,
	UPPER(stu_name),
	lower(stu_name),
	left(stu_name,2),
	right(stu_name,4),
	substring(stu_name,2,4),
	concat(stu_name,',',group_name,'/',locality),
	concat_ws(',',stu_name,group_name,locality),
	replace(stu_name,'dhivya','san thosh')
from students


select distinct locality from students

select 
	sum(monthly_income),
	avg(monthly_income),
	max(monthly_income),
	min(monthly_income)
from students

select 
	ceiling(monthly_income) as  cie,
	floor(monthly_income) flr,
	abs(monthly_income),
	round(monthly_income,2) Nithi
from students




select 
	
	upper(FirstName),
	lower(FirstName),
	left(FirstName,3),
	right(FirstName,4),
	substring(FirstName,2,3),
	concat(FirstName,',',lastname,':',gender),
	concat_ws(',',Firstname,lastname,gender),
	replace(firstname,'Anjali','Kumaresan')
from Customers

select * from Customers

select
	distinct Gender
from Customers

select
	max(phone) as Max_Num,
	min(phone) Min_num,
	avg(phone) Average,
	sum(phone) 
from Customers

select
	ceiling(phone),
	floor(phone),
	round(phone,0) Mandy,
	abs(phone)
from Customers




create table Adhi(
Id int primary key identity(1,1),
name_ varchar(50) not null,
locality varchar(50) default 'Chennai',
age int check (age>-18)
);


Select * from Adhi

Drop table Adhi


Insert into Adhi values
('Nithi',Default,23),
(' ',default,24),
('Suman','Chennai',20),
('Null','Cuddalore',25)