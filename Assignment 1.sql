create database Students;
create database Courses;
create database Instructors;
create database Enrollments;
create database Departments;


use Students;
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

use Courses;
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

use Instructors;
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

use Enrollments;
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

use Departments;
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

use Students;
ALTER TABLE Students ADD nationality VARCHAR(50);
ALTER TABLE Students ADD guardian_name VARCHAR(100);
ALTER TABLE Students ADD guardian_contact VARCHAR(15);
ALTER TABLE Students ADD blood_group VARCHAR(5);

use  Courses;
ALTER TABLE Courses ADD course_language VARCHAR(50);
ALTER TABLE Courses ADD mode VARCHAR(20);
ALTER TABLE Courses ADD prerequisites TEXT;
ALTER TABLE Courses ADD max_students INT;

use Instructors;
ALTER TABLE Instructors ADD experience_years INT;
ALTER TABLE Instructors ADD qualification VARCHAR(100);
ALTER TABLE Instructors ADD linkedin_profile VARCHAR(255);
ALTER TABLE Instructors ADD research_area VARCHAR(100);

use Enrollments;
ALTER TABLE Enrollments ADD attendance_percentage DECIMAL(5,2);
ALTER TABLE Enrollments ADD midterm_score INT;
ALTER TABLE Enrollments ADD final_score INT;
ALTER TABLE Enrollments ADD remarks TEXT;

use Departments;
ALTER TABLE Departments ADD vision TEXT;
ALTER TABLE Departments ADD mission TEXT;
ALTER TABLE Departments ADD website VARCHAR(255);
ALTER TABLE Departments ADD accreditation_status VARCHAR(50);

use Students;
ALTER TABLE Students DROP COLUMN blood_group;

use Courses;
ALTER TABLE Courses DROP COLUMN max_students;

use Instructors;
ALTER TABLE Instructors DROP COLUMN linkedin_profile;

use Enrollments;
ALTER TABLE Enrollments DROP COLUMN remarks;

use Departments;
ALTER TABLE Departments DROP COLUMN accreditation_status;

use Students;
ALTER TABLE Students RENAME COLUMN  first_name TO fname ;
ALTER TABLE Students RENAME COLUMN last_name  TO  lname;
ALTER TABLE Students RENAME COLUMN  phone TO contact_number ;
ALTER TABLE Students RENAME COLUMN email TO   email_id;

use Courses;
ALTER TABLE Courses RENAME COLUMN course_name TO name ;
ALTER TABLE Courses RENAME COLUMN course_code  TO  code;
ALTER TABLE Courses RENAME COLUMN instructor TO  instructor_name;
ALTER TABLE Courses RENAME COLUMN department  TO  dept;

use Instructors;
ALTER TABLE Instructors RENAME COLUMN first_name TO  fname ;
ALTER TABLE Instructors RENAME COLUMN   last_name TO lname;
ALTER TABLE Instructors RENAME COLUMN  phone  TO contact_number;
ALTER TABLE Instructors RENAME COLUMN  title TO   designation;

use Enrollments;
ALTER TABLE Enrollments RENAME COLUMN  student_id TO sid;
ALTER TABLE Enrollments RENAME COLUMN course_id   TO   cid;
ALTER TABLE Enrollments RENAME COLUMN fee_paid  TO  fees_paid;
ALTER TABLE Enrollments RENAME COLUMN grade TO   final_grade;

use Departments;
ALTER TABLE Departments RENAME COLUMN dept_name  TO   department_name;
ALTER TABLE Departments RENAME COLUMN  building_name  TO  building ;
ALTER TABLE Departments RENAME COLUMN  contact_number  TO  phone ;
ALTER TABLE Departments RENAME COLUMN  email_id  TO  email ;



use Students;
ALTER TABLE Students MODIFY  fname VARCHAR(100);
ALTER TABLE Students MODIFY lname VARCHAR(100);
ALTER TABLE Students MODIFY age TINYINT;
ALTER TABLE Students MODIFY email_id VARCHAR(150);

use Courses;
ALTER TABLE Courses MODIFY name VARCHAR(150);
ALTER TABLE Courses MODIFY code VARCHAR(30);
ALTER TABLE Courses MODIFY duration_weeks SMALLINT;
ALTER TABLE Courses MODIFY credits TINYINT;

use Instructors;
ALTER TABLE Instructors MODIFY fname VARCHAR(100);
ALTER TABLE Instructors MODIFY lname VARCHAR(100);
ALTER TABLE Instructors MODIFY salary DECIMAL(12,2);
ALTER TABLE Instructors MODIFY designation VARCHAR(100);

use Enrollments;
ALTER TABLE Enrollments MODIFY sid INT UNSIGNED;
ALTER TABLE Enrollments MODIFY cid INT UNSIGNED;
ALTER TABLE Enrollments MODIFY attendance_percentage DECIMAL(6,2);
ALTER TABLE Enrollments MODIFY final_grade VARCHAR(10);

use Departments;
ALTER TABLE Departments MODIFY department_name VARCHAR(150);
ALTER TABLE Departments MODIFY budget DECIMAL(12,2);
ALTER TABLE Departments MODIFY website VARCHAR(300);
ALTER TABLE Departments MODIFY email VARCHAR(150);