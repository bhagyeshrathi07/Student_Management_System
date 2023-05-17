-- View for staff to see student information
CREATE VIEW vw_staff_student_view AS
SELECT student_id, first_name, last_name, department_id
FROM student_information;

-- View for staff to see course enrollment
CREATE VIEW vw_staff_course_enrollment_view AS
SELECT student_id, course_id, enrollment_date
FROM student_course;

CREATE VIEW vw_staff_student_grade_year AS
SELECT s.student_id, s.first_name, s.last_name, g.academic_year, g.grade
FROM student_information s
INNER JOIN student_grade_year g ON s.student_id = g.student_id;

