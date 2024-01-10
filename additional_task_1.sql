SELECT AVG (grade) as average_grade

FROM Students s

JOIN Grades g ON s.student_id = g.student_id

JOIN Subjects subj ON g.subject_id = subj.subject_id

JOIN Teachers t ON subj.teacher_id = t.teacher_id

WHERE s.student_id = 1 and t.teacher_id = 1