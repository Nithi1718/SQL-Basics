create table store 
(
pro_name varchar(10),
pro_quantity integer,
pro_sale integer,
pro_discount decimal(10,2),
sale_date date,
sales_id bigint, 
loca_tion char(10)
); 

select * from store

insert into store values
('books',500,425,12.1,'2026-01-01',12345000,'chennai')

insert into store values
('chair',400,255,10.2,'2026-01-01',12345001,'chennai')

insert into store values
('glass',500,355,15.0,'2026-01-01',12345002,'anna nagar'),
('plastic',600,453,11.3,'2026-01-01',12345003,'andaman'),
('paper',500,85,10.2,'2026-01-01',12345004,'avadi'),
('food',900,685,12.5,'2026-01-01',12345005,'port blair')


create table studentsss
(
roll_no integer,
stud_name varchar(10),
stud_id char(10),
stud_dept varchar(10),
loca_tion char(10),
ad_yr date,
pas_yr date
);

select * from studentsss
 
insert into studentsss values
(001,'arun','AAA','ece','chennai','2022-01-01','2026-12-01'),
(002,'raj','AAB','csc','tambaram','2022-01-01','2026-12-01'),
(003,'priya','AAC','aero','avadi','2022-01-01','2026-12-01'),
(004,'pooja','AAD','bio','anna nagar','2022-01-01','2026-12-01'), 
(005,'arjun','AAE','beee','tambaram','2022-01-01','2026-12-01'), 
(006,'raju','AAF','nursing','t nagar','2022-01-01','2026-12-01')

create table 

select
stud_name,
upper(stud_name) as upr,
lower(stud_name) as lwr,
left(stud_name,2) as lft,
right(stud_name,3) as rgt,
substring(stud_name,2,3) as sub,
concat(stud_name,'-',stud_dept,'-',stud_id)
from studentsss
