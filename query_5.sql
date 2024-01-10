SELECT 
    t.teacher_id,
    t.teacher_name,
    s.subject_id,
    s.subject_name
FROM 
    Teachers t
JOIN 
    Subjects s ON t.teacher_id = s.teacher_id
WHERE 
    t.teacher_id = 1
