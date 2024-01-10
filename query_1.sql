SELECT 
    s.student_id,
    s.student_name,
    AVG(g.grade) as average_grade
FROM 
    Students s
JOIN 
    Grades g ON s.student_id = g.student_id
GROUP BY 
    s.student_id, s.student_name
ORDER BY 
    average_grade DESC
LIMIT 5;

