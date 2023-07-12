/* Write your T-SQL query statement below */
SELECT S.student_id, S.student_name, SUB.subject_name, COUNT(ES.student_id) AS attended_exams
FROM Students S
CROSS JOIN Subjects SUB
LEFT JOIN Examinations ES ON S.student_id = ES.student_id AND SUB.subject_name = ES.subject_name
GROUP BY S.student_id, S.student_name, SUB.subject_name
ORDER BY S.student_id, S.student_name
