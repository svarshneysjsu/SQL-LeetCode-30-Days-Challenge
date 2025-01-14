# Write your MySQL query statement below
SELECT request_at AS Day, 
ROUND((COUNT(CASE WHEN status = 'cancelled_by_driver' OR status = 'cancelled_by_client' THEN 1 END)/ COUNT(id)), 2) AS "Cancellation Rate"
FROM trips t WHERE client_id NOT IN 
(SELECT users_id FROM users WHERE banned = 'Yes') AND
driver_id NOT IN 
(SELECT users_id FROM users WHERE banned = 'Yes')
AND request_at BETWEEN "2013-10-01" and "2013-10-03"
GROUP BY request_at
