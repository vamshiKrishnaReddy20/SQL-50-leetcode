# Write your MySQL query statement below
SELECT name,bonus FROM Employee AS E
LEFT JOIN Bonus AS B ON E.empId = B.empId
WHERE bonus < 1000 IS NOT FALSE;