CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    address TEXT,
    department VARCHAR(50),
    enrollment_date DATE
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(20),
    department VARCHAR(50),
    credits INT,
    instructor VARCHAR(100),
    duration_weeks INT,
    semester VARCHAR(20),
    year_offered INT,
    level VARCHAR(20)
);

CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10,2),
    office_room VARCHAR(20),
    title VARCHAR(50)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(5),
    semester VARCHAR(20),
    year INT,
    status VARCHAR(20),
    fee_paid BOOLEAN,
    feedback TEXT
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    building VARCHAR(50),
    head VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    budget DECIMAL(10,2),
    established_year INT,
    faculty_count INT,
    student_count INT
);

ALTER TABLE Students 
    ADD nationality VARCHAR(50),
    ADD guardian_name VARCHAR(100),
    ADD guardian_contact VARCHAR(15),
    ADD blood_group VARCHAR(5);

ALTER TABLE Courses 
    ADD course_language VARCHAR(50),
    ADD mode VARCHAR(20),
    ADD prerequisites TEXT,
    ADD max_students INT;

ALTER TABLE Instructors 
    ADD experience_years INT,
    ADD qualification VARCHAR(100),
    ADD linkedin_profile VARCHAR(255),
    ADD research_area VARCHAR(100);

ALTER TABLE Enrollments 
    ADD attendance_percentage DECIMAL(5,2),
    ADD midterm_score INT,
    ADD final_score INT,
    ADD remarks TEXT;

ALTER TABLE Departments 
    ADD vision TEXT,
    ADD mission TEXT,
    ADD website VARCHAR(255),
    ADD accreditation_status VARCHAR(50);

ALTER TABLE Students DROP COLUMN blood_group;
ALTER TABLE Courses DROP COLUMN max_students;
ALTER TABLE Instructors DROP COLUMN linkedin_profile;
ALTER TABLE Enrollments DROP COLUMN remarks;
ALTER TABLE Departments DROP COLUMN accreditation_status;

ALTER TABLE Students 
    RENAME COLUMN first_name TO fname,
    RENAME COLUMN last_name TO lname,
    RENAME COLUMN phone TO contact_number,
    RENAME COLUMN email TO email_id;

ALTER TABLE Courses 
    RENAME COLUMN course_name TO name,
    RENAME COLUMN course_code TO code,
    RENAME COLUMN instructor TO instructor_name,
    RENAME COLUMN department TO dept;

ALTER TABLE Instructors 
    RENAME COLUMN first_name TO fname,
    RENAME COLUMN last_name TO lname,
    RENAME COLUMN phone TO contact_number,
    RENAME COLUMN title TO designation;

ALTER TABLE Enrollments 
    RENAME COLUMN student_id TO sid,
    RENAME COLUMN course_id TO cid,
    RENAME COLUMN fee_paid TO fees_paid,
    RENAME COLUMN grade TO final_grade;

-- No need to rename columns in Departments since they already match.

-- Step 6: Modify column types
ALTER TABLE Students 
    MODIFY fname VARCHAR(100),
    MODIFY lname VARCHAR(100),
    MODIFY age TINYINT,
    MODIFY email_id VARCHAR(150);

ALTER TABLE Courses 
    MODIFY name VARCHAR(150),
    MODIFY code VARCHAR(30),
    MODIFY duration_weeks SMALLINT,
    MODIFY credits TINYINT;

ALTER TABLE Instructors 
    MODIFY fname VARCHAR(100),
    MODIFY lname VARCHAR(100),
    MODIFY salary DECIMAL(12,2),
    MODIFY designation VARCHAR(100);

ALTER TABLE Enrollments 
    MODIFY sid INT UNSIGNED,
    MODIFY cid INT UNSIGNED,
    MODIFY attendance_percentage DECIMAL(6,2),
    MODIFY final_grade VARCHAR(10);

ALTER TABLE Departments 
    MODIFY department_name VARCHAR(150),
    MODIFY budget DECIMAL(12,2),
    MODIFY website VARCHAR(300),
    MODIFY email VARCHAR(150);
