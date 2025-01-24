select Department, Employee, Salary from 
(
    select e.name as Employee, e.salary as Salary, d.name as Department, dense_rank() over (partition by d.name order by salary desc) as sal_rnk 
    from Employee e inner join Department d on e.departmentId = d.id
) a 
where sal_rnk < 4