SELECT coalesce(MAX(salary), NULL) as SecondHighestSalary 
FROM 
(SELECT id, salary,DENSE_RANK() OVER(order by salary DESC) as Rnk FROM Employee) a 
WHERE rnk = 2
