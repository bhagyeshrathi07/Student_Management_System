-- Create department table
CREATE TABLE department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(255)
);
-- Create course_location table
CREATE TABLE course_location (
  location_id INT PRIMARY KEY,
  location_name VARCHAR(255),
  address VARCHAR(255)
);
-- Create staff_role table
CREATE TABLE staff_role (
  role_id INT PRIMARY KEY,
  role_name VARCHAR(255)
);
-- Create student_address table
CREATE TABLE student_address (
  student_id INT PRIMARY KEY,
  address VARCHAR(255)
);
-- Create staff_address table
CREATE TABLE staff_address (
  staff_address_id INT PRIMARY KEY,
  address VARCHAR(255)
);
-- Create staff_information table
CREATE TABLE staff_information (
  staff_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  date_of_birth DATE,
  department_id INT,
  role_id INT,
  address_id INT,
  FOREIGN KEY (address_id) REFERENCES staff_address(staff_address_id),
  FOREIGN KEY (department_id) REFERENCES department(department_id),
  FOREIGN KEY (role_id) REFERENCES staff_role(role_id)
);
-- Create course_catalog table
CREATE TABLE course_catalog (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(255),
  department_id INT,
  credits INT,
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);
-- Create course_requirements table
CREATE TABLE course_requirements (
  requirement_id INT PRIMARY KEY,
  course_id INT,
  requirement_description VARCHAR(255),
  FOREIGN KEY (course_id) REFERENCES course_catalog(course_id)
);
-- Create student_information table
CREATE TABLE student_information (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  date_of_birth DATE,
  department_id INT,
  address_id INT,
  FOREIGN KEY (department_id) REFERENCES department(department_id),
  FOREIGN KEY (address_id) REFERENCES student_address(student_id)
);
-- Create student_attendance table
CREATE TABLE student_attendance (
  attendance_id INT PRIMARY KEY,
  student_id INT,
  date DATE,
  status VARCHAR(255),
  FOREIGN KEY (student_id) REFERENCES student_information(student_id)
);
-- Create student_course table
CREATE TABLE student_course (
  student_id INT,
  course_id INT,
  location_id INT,
  enrollment_date DATE,
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES student_information(student_id),
  FOREIGN KEY (course_id) REFERENCES course_catalog(course_id),
  FOREIGN KEY (location_id) REFERENCES course_location(location_id)
);
-- Create student_grade_year table
CREATE TABLE student_grade_year (
  student_id INT,
  academic_year INT,
  grade INT,
  PRIMARY KEY (student_id, academic_year),
  FOREIGN KEY (student_id) REFERENCES student_information(student_id)
);