# Write your MySQL query statement below
select Email from (select id, email, count(email) as cnt from Person group by email) a
where cnt > 1