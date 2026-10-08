--TABLE CREATION AND VALUES INSERTING
--DROP TABLE AND SHOW TABLE USING(SELECT * FROM TABLENAME)
CREATE TABLE VILLAGERSSSSS(
SERIAL_NUM INT PRIMARY KEY IDENTITY(1,1),
NAMES VARCHAR(50) NOT NULL,
DISCOUNT DECIMAL(7,2) CHECK (DISCOUNT >5),
DATE_OF_BIRTH DATE DEFAULT '2026-09-13',
MOBILE_NUM BIGINT,
LOCALITY CHAR(10) DEFAULT 'CHENNAI'
);

INSERT INTO VILLAGERSSSSS VALUES
(1, 'SARANGAPAANI', 8.95, '2020-12-27', 9000000001, 'CHENNAI'),
(2, 'KOMALA', 5.89, '2025-10-28', 9000000002, 'CHENNAI')

SELECT * FROM VILLAGERSSSSS

DROP TABLE VILLAGERSSSSS



--PRIMARY KEY, IDENTITY(1,1), NOT NULL, DEFAULT, CHECK (CONDITION)
INSERT INTO VILLAGERSSSSS(NAMES, DISCOUNT,MOBILE_NUM) VALUES
('NITHISSSS',  6.10,  9000000001),
('KUMARRR',  6.20,  9000000002),
('ITACHI',  6.30,  9000000003),
('BRUCE LEE',  6.40,  9000000004),
('NITHI',  6.50,  9000000005),
('NITHIS',  6.60,  9000000006),
('NITHISH',  6.70,  9000000007),
('SASUKE',  6.80,  9000000008),
('NARUTO',  6.90,  9000000009),
('HINATA', null,  9000000010),
('ROSE',  7.10,  9000000011)

SELECT * FROM VILLAGERSSSSS

DROP TABLE VILLAGERSSSSS


-- TEXT FUNCTION (UPPER, LOWER, RIGHT, LEFT, SUBSTRING, CONCAT, CONCAT_WS, REPLACE)
SELECT
	NAMES,
	UPPER(NAMES) CAPITAL,
	LOWER(NAMES) SMALL,
	RIGHT(NAMES,3) RIGHTALLIGN,
	LEFT(NAMES,4) LEFTALLIGN,
	SUBSTRING(NAMES,3,4) MIDALLIGN,
	CONCAT(NAMES, ',', DATE_OF_BIRTH, '|||', LOCALITY)  NAMEDOBLOC,
	CONCAT_WS('---- ', NAMES, DISCOUNT, LOCALITY) NAMEDISLOC,
	REPLACE(NAMES, 'NITHISH', 'BRUCE LEE') UPDATED
FROM VILLAGERSSSSS


-- AGGREGATION FUNCTION (MAX, MIN, AVG, SUM)
SELECT
	MAX(DISCOUNT) MAXIMUM,
	MIN(DISCOUNT) MINIMUM,
	AVG(DISCOUNT) AVERAGE,
	SUM(DISCOUNT) TOTAL,
	COUNT(DISCOUNT) WITHOUTNULL,   -- DOES NOT COUNT NULL VALUES
	COUNT(*) WITHNULL    -- COUNT ROWS AND COUNT NULL VALUES TOO
FROM VILLAGERSSSSS

SELECT * FROM VILLAGERSSSSS


-- DISCOUNT VALUES 
SELECT
	DISTINCT LOCALITY
FROM VILLAGERSSSSS

SELECT DISTINCT DATE_OF_BIRTH FROM VILLAGERSSSSS


--CEILING, FLOOR, ABS, ROUND
SELECT
	CEILING(DISCOUNT) ROUND_UP,
	FLOOR(DISCOUNT) ROUND_DOWN,
	ABS(DISCOUNT) ABSOLUTE_VALUE,
	ROUND(DISCOUNT,1) ROUND_OFF_1,
	ROUND(DISCOUNT,0) ROUND_OFF_0
FROM VILLAGERSSSSS




SELECT * FROM ORDERSS
SELECT TOP 4 * FROM ORDERSS

SELECT * FROM ORDERSS
WHERE NOT  DeliveryStatus IN  ('DELIVERED')

SELECT * FROM ORDERSS
WHERE Tax BETWEEN 400 AND 2000
ORDER BY ProductId DESC




select * from students

Order by roll_number
ORDER BY Roll_Number DESC

WHERE ROLL_NUMBER IN (1,4,5)
WHERE NOT ROLL_NUMBER IN (1,4,5)
where ROLL_NUMBER BETWEEN 1 AND 5
where group_name = 'B.ED' OR ROLL_NUMBER = 1
where group_name ='B.ED' and roll_number = 3
WHERE NOT ROLL_NUMBER = 1
WHERE ROLL_NUMBER <> 1
WHERE ROLL_NUMBER != 1
where roll_number = 1

select top 2 * from students


create table fita
(
	stu_id int,
	stu_name varchar(10)
);


select * from fita
exec sp_rename 'fita.students_name','student_name','column'


alter table fita
alter column stu_name varchar(30)

update fita
set stu_name = 'nithish'
where stu_id = 1

alter table fita
drop column stu_mob

alter table fita
drop column stu_loc

alter table fita
add stu_loc varchar(10)

alter table fita 
add stu_mob bigint

delete from fita
where stu_id = 1

truncate table fita

drop table fita 

insert into fita values
(1,'sathish'),
(2,'vinoth'),
(3,'raj')



create table GroupName(
groupId int primary key,
groupnamenew varchar(50),
stuname varchar(50),
age int,
height decimal(5,2)
);

insert into groupname values
(101, 'biology','Nithish',23, 168.7),
(102, 'Computer science','Suresh',23, 168.7),
(103, 'biology','Hariharan',23, 168.7),
(104, 'Computer science','Mukesh',23, 168.7),
(105, 'Computer science','Vinoth',23, 168.7),
(106, 'biology','Santhosh',23, 168.7)

select * from groupname

alter table groupname
add stuweight int

alter table groupname
drop  column stuweight

alter table groupname
add stuweight int

alter table groupname
alter  column groupnamenew varchar(25)

update groupname
set stuweight = 40
where groupid between 101 and 105

delete from groupname
where groupid in (101,102)

truncate table groupname

drop table groupname

exec sp_rename 'groupname.groupnamenew', 'updatedgroup'
exec sp_rename 'groupname.updatedgroup', 'groupnamenew', 'column'

select * from groupname

update groupname
set stuweight = 15
where groupid between 101 and 106

drop table student

create table student(
stu_id int primary key,
stuname varchar(40)
);

insert into student values
(1,'nithish')

select * from students
where locality like '%a%'


