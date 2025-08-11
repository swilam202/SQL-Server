-- Aggregate functions 
-- 
--please note that aggregate functions don't consider null values

-- gets the sum of the column values
select sum(salary) from employee

--gets the max and min values in the column
select max(salary) , min(bonus) from employee

-- select the count of rows in the column
select count(age) from employee

-- select the avarage of rows in the column (their sum values / their count)
select avg(age) from employee