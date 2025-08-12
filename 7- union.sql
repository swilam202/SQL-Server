--Union

--list the values from 2 queries into one column
select first_name from employee
union all
select last_name from employee

--this won't work because the number of columns must be equal 
--even the data types must be the same
select first_name, last_name from employee
union all
select last_name from employee

--same as above but deletes dublicated values and sorts results
select first_name from employee
union 
select last_name from employee

--gets the value found both columns
select first_name from employee
intersect 
select last_name from employee

--find the first_name that is not found in the last_name
--the opposite of the above
select first_name from employee
except 
select last_name from employee