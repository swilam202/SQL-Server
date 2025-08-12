--subqueries
select * from employee

--first execute the avg query and use the output for the where in the outer query
select * from employee
where salary > (select avg(salary) from employee)

-- you can also make queries inside columns
select first_name + ' ' + last_name , (select min(salary) from employee) from employee
