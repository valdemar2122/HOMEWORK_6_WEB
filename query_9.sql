SELECT DISTINCT subj.subject_name, s.student_name
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
JOIN Subjects subj ON g.subject_id = subj.subject_id
JOIN Groups_students sg ON s.group_id = sg.group_id
WHERE s.student_id = '3' AND sg.group_name = 'Group B';
