use TINKER

create table ordering
(
Id int primary key,
names varchar(50),
age int default 25
);

create table customers
(
names varchar(40) default 'muthu',
Id int,
age int ,
DOB date default '2026-09-25'

foreign key(Id)
	references ordering(Id)

	on delete cascade
	on update cascade
);


insert into ordering(Id, names) values
(1, 'suresh'),
(2, 'kumar'),
(3, 'varun'),
(4, 'tharun')

insert into customers(Id, age) values
(1,50),
(2,51),
(3,52),
(4,53)


select * from ordering
select * from customers


delete from ordering
where id in (3,4)

update ordering
set id = 1
where id = 4


drop table customers


select
*,
case 
	when id = 1 then 'nithish'
	when id =2 then 'muthu'
end as nammmes
from ordering


select * from ordering

create view Nithish as
select * from ordering

select * from Nithish

drop view Nithish



