SELECT sg.group_id, sg.group_name, AVG(g.grade) as average_grade
FROM Groups_students sg
JOIN Students s ON sg.group_id=s.group_id
JOIN Grades g ON s.student_id=g.student_id
WHERE g.subject_id = 1
GROUP BY sg.group_id, sg.group_name
ORDER BY average_grade DESC;

