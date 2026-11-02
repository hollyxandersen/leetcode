/* Write your T-SQL query statement below */
SELECT w.id
FROM Weather w
JOIN Weather p ON w.recordDate = DATEADD(day,1,p.recordDate) AND
w.temperature > p.temperature