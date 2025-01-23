# Write your MySQL query statement below
select Dname as Department, 
Ename as Employee, 
Salary 
from 
(select 
e.name Ename, e.salary, d.name Dname ,max(salary) over (partition by d.name order by salary desc) as max_of_dept
from 
Employee e inner join Department d on e.departmentId = d.id
order by salary desc) a
where salary = max_of_dept