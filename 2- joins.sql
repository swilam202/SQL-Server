use Company

select * from employee

create table Department(
id int primary key,
d_name varchar(20)
)


select * from Department

insert into Department 
values (
7,'PL'
)



-- cartesian product --

select first_name , d_name from employee , Department


-- inner join --

select first_name , d_name from employee , Department
where d_num = id

select first_name , d_name from employee cross join Department
where d_num = id

--secify the column table if there is dublication in column names
select first_name , d_name from employee , Department
where employee.d_num = Department.id

-- using allias name for tables
select first_name , d_name from employee E , Department D
where E.d_num = D.id

--another type of writing inner join
select first_name , id from  employee E inner join Department D on e.d_num = D.id


-- outer join --

-- left outer join

-- bring the full left column and add other data to it weather it's null or not 
select first_name , id from  employee E left outer join Department D on e.d_num = D.id

-- right outer join

-- bring the full right column and add other data to it weather it's null or not 
select first_name , id from  employee E right outer join Department D on e.d_num = D.id

-- full outer join

-- bring the full right and left columns and display data to it weather it's null or not 
select age , d_name from  employee E full outer join Department D on e.d_num = D.id

-- self join

select X.first_name + ' ' + X.last_name , Y.ssn as 'Super id',  Y.first_name as 'Super name' from employee X , employee Y 
where Y.ssn = x.super_id