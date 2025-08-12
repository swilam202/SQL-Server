--grouping


--collects all whose first_name is identical into groups and show the sum of each group
select first_name , sum(salary) 
from employee 
group by  first_name

--same as above but after all steps filter results and show only salaries above 50,000
select first_name as [First name]  , sum(salary) as Salary ,AVG(bonus) as Bonus
from employee 
where salary > 50000
group by  first_name

-- like where except that having may remove groups
select first_name as [First name]  , sum(salary) as Salary ,AVG(bonus) as Bonus
from employee 
group by  first_name
having sum(salary) > 60000
