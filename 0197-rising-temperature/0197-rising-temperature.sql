# Write your MySQL query statement below
SELECT
    today.id
FROM weather yesterday
CROSS JOIN weather today

WHERE datediff(today.recordDate,yesterday.recordDate) = 1
    AND today.temperature > yesterday.temperature;