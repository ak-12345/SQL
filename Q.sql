SELECT first_name, last_name FROM student;

SELECT instructor_id FROM instructor WHERE tenured = 1;

SELECT s.first_name AS student_first_name,
       s.last_name AS student_last_name,
       a.first_name AS advisor_first_name,
       a.last_name AS advisor_last_name
FROM student s
JOIN instructor a ON s.advisor_id = a.instructor_id
WHERE s.advisor_id IS NOT NULL;

SELECT i.instructor_id, i.first_name, i.last_name
FROM instructor i
LEFT JOIN student s ON i.instructor_id = s.advisor_id
WHERE s.advisor_id IS NULL;

SELECT
    instructor.first_name,
    instructor.last_name,
    SUM(course.num_credits) AS total_credits
FROM
    instructor
    JOIN course ON instructor.instructor_id = course.instructor_id
GROUP BY
    instructor.instructor_id

SELECT course_code, course_name
FROM course
WHERE course_code LIKE '3___';

SELECT course.course_code, instructor.first_name, instructor.last_name, course.num_credits
FROM student_schedule
JOIN course ON student_schedule.course_id = course.course_id
JOIN instructor ON course.instructor_id = instructor.instructor_id
WHERE student_schedule.student_id = 1;