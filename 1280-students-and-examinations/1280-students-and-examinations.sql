SELECT 
    S.student_id,
    S.student_name,
    sub.subject_name,
    IFNULL(COUNT(E.subject_name), 0) AS attended_exams
FROM 
    Students AS S
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations AS E 
    ON S.student_id = E.student_id AND sub.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, sub.subject_name
ORDER BY S.student_id, sub.subject_name;
