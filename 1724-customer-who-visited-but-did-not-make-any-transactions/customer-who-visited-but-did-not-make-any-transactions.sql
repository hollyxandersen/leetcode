# Write your MySQL query statement below
SELECT DISTINCT v.customer_id, count(customer_id) as "count_no_trans"
FROM Visits v
LEFT JOIN Transactions t on v.visit_id = t.visit_id 
WHERE transaction_id is NULL
GROUP BY customer_id