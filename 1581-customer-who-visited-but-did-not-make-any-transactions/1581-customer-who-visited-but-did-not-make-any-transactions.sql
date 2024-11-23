# Write your MySQL query statement below
SELECT 
    customer_id,
    count(customer_id) AS count_no_trans
FROM
    Visits V 
WHERE v.visit_id NOT IN (SELECT visit_id FROM Transactions )
GROUP BY V.customer_id;