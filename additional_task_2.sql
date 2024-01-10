SELECT 
    s.student_id,
    s.student_name,
    g.grade,
    g.date_received
FROM 
    Students s
JOIN 
    Grades g ON s.student_id = g.student_id
JOIN 
    Subjects subj ON g.subject_id = subj.subject_id
JOIN 
    Groups_students sg ON s.group_id = sg.group_id
WHERE 
    sg.group_name = 'Group A' 
    AND subj.subject_name = 'math'
ORDER BY g.date_received DESC
LIMIT 1;
