SELECT 
    s.student_id,
    s.student_name,
    sg.group_name
FROM 
    Students s
JOIN 
    Groups_students gs ON s.group_id = gs.group_id
WHERE 
    sg.group_name = 'Group C'
