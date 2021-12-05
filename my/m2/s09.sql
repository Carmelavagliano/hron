-- examples on self join
use hron;

-- SQL/92
select concat(e.first_name, ' ', e.last_name) as Employee, concat(m.first_name, ' ', m.last_name) as Manager
from employee e join employee m
on e.manager_id = m.employee_id
order by 1;

-- "classic"
select concat(e.first_name, ' ', e.last_name) as Employee, concat(m.first_name, ' ', m.last_name) as Manager
from employee e, employee m
where e.manager_id = m.employee_id
order by 1;
