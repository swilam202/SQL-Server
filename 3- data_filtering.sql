use Company

-- replace null values with temp values
select isnull(age,0) from employee

--replace first name with last name if the first name is null 
select isnull(first_name,last_name) from employee

-- same as isnull but with multiple replacement
select coalesce(first_name,last_name,'No data') from employee

--parse data types
select first_name + ' ' + CONVERT(varchar(3),age) from employee

--convert all data into string and replace null with empty string
select concat(first_name,last_name,age) from employee

--like function is equal in this case
select first_name from employee where first_name like 'Ahmed'

-- get all data that starts with A and has zero or more characters to the right
select first_name from employee where first_name like 'A%'

-- get all data that ends with A and has zero or more characters to the left
select first_name from employee where first_name like '%A'

-- get all data that contains A anywhere
select first_name from employee where first_name like '%A%'

-- get all data that A is the second character and has zero or more chars to the right
select first_name from employee where first_name like '_A%'

-- get all data that starts with A or h or m
select first_name from employee where first_name like '[Ahm]%'

-- get all data that does NOT starts with A or h or m
select first_name from employee where first_name like '[^Ahm]%'


-- get all data that starts with any char in the range from A to M
select first_name from employee where first_name like '[A-M]%'

-- get all data that ends with %
select first_name from employee where first_name like '%[%]'

-- order data by the second column
select * from employee order by 2

-- order data by department id and then order each section that has the same age with first name

select * from employee order by d_num , first_name