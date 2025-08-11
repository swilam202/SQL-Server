--DML/DQL

--select targeted database
use Company

--create new table with following columns
Create table employee
(
ssn int Primary Key,

--birth date if null get current device date
birth_date date default getdate(),

--String of 1 length value
gender varchar(1),
first_name varchar(20) not null,
last_name varchar(20) not null,
age tinyint,
d_num int,
super_id int
)

--update table and add new column with int data type
alter table employee add salary int

--update column 
alter table employee alter column salary int

--remove column
alter table employee drop column salary

--remove table
drop table employee



-- DML

--add new row to employee with following column name and value order
insert into employee(ssn,birth_date,gender,first_name,last_name,age) 
values(55,'4/17/2002','M','Mahmoud','swilam',25)

--add new row by the table order
insert into employee
values(56,'4/30/2004','M','Ahmed','Amr',14,1,55)

insert into employee
values(60,'6/18/2001','M','Nada','Mostafa',30,1,56)

--update all rows
update employee
set gender = 'M',super_id = null

--update specific rows
update employee
set gender = 'F'
where first_name = 'Nada'

-- delete specific rows
delete from employee where first_name = 'Ahmed'

--------------------------------------
--DQL

select * from employee

select ssn,gender from employee

select * from employee where gender = 'M'

select * from employee where d_num is not null 

select * from employee where age > 12 and age < 30

select * from employee where age > 12 or age < 30

select * from employee where age between 14 and 20

--sort rows
select * from employee
order by first_name 

select * from employee
order by first_name asc

select * from employee
order by first_name desc

-- concatination of values
select first_name + ' ' + last_name from employee

--aliais name for the new row
select first_name + ' ' + last_name as full_name from employee

--if the name has spaces you must put it inside []
select first_name + ' ' + last_name as [full name] from employee

-- choose only one value of dublication
select distinct first_name from employee
