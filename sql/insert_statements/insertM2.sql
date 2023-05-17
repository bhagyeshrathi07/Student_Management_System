-- Insert values into department table
INSERT INTO department (department_id, department_name)
VALUES (1, 'Computer Science'),
       (2, 'Mathematics'),
       (3, 'Physics');

-- Insert values into course_location table
INSERT INTO course_location (location_id, location_name, address)
VALUES (1, 'Building A', '123 Main Street'),
       (2, 'Building B', '456 Elm Street'),
       (3, 'Building C', '789 Oak Street');

-- Insert values into staff_role table
INSERT INTO staff_role (role_id, role_name)
VALUES (1, 'Professor'),
       (2, 'Assistant Professor'),
       (3, 'Teaching Assistant');

-- Insert values into student_address table
INSERT INTO student_address (student_id, address)
VALUES (1, '10 College Avenue'),
       (2, '20 University Street'),
       (3, '30 School Road');

-- Insert values into staff_address table
INSERT INTO staff_address (staff_address_id, address)
VALUES (1, '40 Faculty Lane'),
       (2, '50 Staff Road'),
       (3, '60 Administration Avenue');

-- Insert values into staff_information table
INSERT INTO staff_information (staff_id, first_name, last_name, date_of_birth, department_id, role_id, address_id)
VALUES (1, 'John', 'Doe', '1980-01-01', 1, 1, 1),
       (2, 'Jane', 'Smith', '1985-05-15', 2, 2, 2),
       (3, 'Robert', 'Johnson', '1990-12-31', 3, 3, 3);

-- Insert values into course_catalog table
INSERT INTO course_catalog (course_id, course_name, department_id, credits)
VALUES (1, 'Introduction to Programming', 1, 3),
       (2, 'Linear Algebra', 2, 4),
       (3, 'Classical Mechanics', 3, 3);

-- Insert values into course_requirements table
INSERT INTO course_requirements (requirement_id, course_id, requirement_description)
VALUES (1, 1, 'Prerequisite: None'),
       (2, 2, 'Prerequisite: Calculus'),
       (3, 3, 'Prerequisite: Physics 101');

-- Insert values into student_information table
INSERT INTO student_information (student_id, first_name, last_name, date_of_birth, department_id, address_id)
VALUES (1, 'Alice', 'Johnson', '2000-03-15', 1, 1),
       (2, 'Bob', 'Smith', '2001-07-10', 2, 2),
       (3, 'Eve', 'Davis', '1999-11-25', 3, 3);

-- Insert values into student_attendance table
INSERT INTO student_attendance (attendance_id, student_id, date, status)
VALUES (1, 1, '2023-01-10', 'Present'),
       (2, 2, '2023-01-10', 'Present'),
       (3, 3, '2023-01-10', 'Absent');
       
-- Insert values into student_course table
INSERT INTO student_course (student_id, course_id, location_id, enrollment_date)
VALUES (1, 1, 1, '2023-01-01'),
       (2, 2, 2, '2023-01-02'),
       (3, 3, 3, '2023-01-03');

-- Insert values into student_grade_year table
INSERT INTO student_grade_year (student_id, academic_year, grade)
VALUES (1, 2023, 'A'),
       (2, 2023, 'B'),
       (3, 2023, 'C');