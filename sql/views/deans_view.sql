CREATE VIEW vw_dean_overview AS
SELECT s.student_id, s.first_name, s.last_name, d.department_name, sa.address, c.course_name
FROM student_information s
INNER JOIN department d ON s.department_id = d.department_id
INNER JOIN student_address sa ON s.address_id = sa.student_id
INNER JOIN student_course sc ON s.student_id = sc.student_id
INNER JOIN course_catalog c ON sc.course_id = c.course_id;

CREATE VIEW vw_dean_attendance AS
SELECT s.student_id, s.first_name, s.last_name, a.date, a.status
FROM student_information s
INNER JOIN student_attendance a ON s.student_id = a.student_id;

CREATE VIEW vw_dean_performance AS
SELECT s.student_id, s.first_name, s.last_name, g.academic_year, g.grade
FROM student_information s
INNER JOIN student_grade_year g ON s.student_id = g.student_id;

CREATE VIEW vw_dean_staff_view AS
SELECT s.staff_id, s.first_name, s.last_name, d.department_name, r.role_name
FROM staff_information s
INNER JOIN department d ON s.department_id = d.department_id
INNER JOIN staff_role r ON s.role_id = r.role_id;


