# Write your MySQL query statement below
SELECT
    a.machine_id,
    /* a.timestamp,b.timestamp, */
    round(avg(b.timestamp - a.timestamp),3) AS processing_time
FROM activity a
JOIN activity b ON a.machine_id = b.machine_id AND a.process_id = b.process_id
WHERE a.activity_type = 'start' AND b.activity_type = 'end'
GROUP BY machine_id;

