SELECT 
	t.teacher_id,
	t.teacher_name,
    AVG(grade) as average_grade

FROM Teachers t

JOIN Subjects s ON t.teacher_id = s.teacher_id

JOIN Grades g ON s.subject_id = g.subject_id

GROUP BY t.teacher_id, t.teacher_name;