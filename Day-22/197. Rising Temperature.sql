# Write your MySQL query statement below
select id from (
    select id , temperature, Lag
(temperature) over(order by recorddate) as lastTemp, recorddate,
lag (recorddate) over(order by recorddate) as nextdate
from weather
) a 
where temperature - lastTemp > 0 and datediff(recorddate,nextdate) = 1

