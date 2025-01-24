# Write your MySQL query statement below
with cte as 
(select id, email, row_number() over (partition by email order by id) as row_num 
from person) 

delete from person 
where id in (select id from cte where row_num > 1)