# Write your MySQL query statement below
SELECT
    product_name,
    year,
    price
FROM sales s
INNER JOIN Product p ON s.product_id = p.product_id;