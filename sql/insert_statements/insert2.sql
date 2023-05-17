-- Insert values into department table
INSERT INTO department (department_id, department_name)
VALUES (4, 'Chemistry'),
       (5, 'Biology'),
       (6, 'English');

-- Insert values into course_location table
INSERT INTO course_location (location_id, location_name, address)
VALUES (4, 'Building D', '789 Elm Street'),
       (5, 'Building E', '234 Oak Avenue'),
       (6, 'Building F', '567 Pine Road');

-- Insert values into staff_role table
INSERT INTO staff_role (role_id, role_name)
VALUES (4, 'Lab Instructor'),
       (5, 'Coordinator'),
       (6, 'Research Assistant');

-- Insert values into student_address table
INSERT INTO student_address (student_id, address)
VALUES (4, '40 College Avenue'),
       (5, '50 University Street'),
       (6, '60 School Road');

-- Insert values into staff_address table
INSERT INTO staff_address (staff_address_id, address)
VALUES (4, '70 Faculty Lane'),
       (5, '80 Staff Road'),
       (6, '90 Administration Avenue');

-- Insert values into staff_information table
INSERT INTO staff_information (staff_id, first_name, last_name, date_of_birth, department_id, role_id, address_id)
VALUES (4, 'Sarah', 'Miller', '1983-04-12', 4, 4, 4),
       (5, 'Michael', 'Wilson', '1978-09-21', 5, 5, 5),
       (6, 'Emily', 'Davis', '1991-06-18', 6, 6, 6);

-- Insert values into course_catalog table
INSERT INTO course_catalog (course_id, course_name, department_id, credits)
VALUES (4, 'Organic Chemistry', 4, 4),
       (5, 'Cell Biology', 5, 3),
       (6, 'English Literature', 6, 3);

-- Insert values into course_requirements table
INSERT INTO course_requirements (requirement_id, course_id, requirement_description)
VALUES (4, 4, 'Prerequisite: General Chemistry'),
       (5, 5, 'Prerequisite: Biology 101'),
       (6, 6, 'Prerequisite: English Composition');

-- Insert values into student_information table
INSERT INTO student_information (student_id, first_name, last_name, date_of_birth, department_id, address_id)
VALUES (4, 'Daniel', 'Wilson', '2002-01-05', 4, 4),
       (5, 'Olivia', 'Taylor', '2003-08-15', 5, 5),
       (6, 'Sophia', 'Brown', '2001-03-20', 6, 6);

-- Insert values into student_attendance table
INSERT INTO student_attendance (attendance_id, student_id, date, status)
VALUES (4, 4, '2023-02-01', 'Present'),
       (5, 5, '2023-02-01', 'Absent'),
       (6, 6, '2023-02-01', 'Present');