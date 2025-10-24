CREATE DATABASE pgdb;

-- Use the database
USE pgdb;

-- =============================
-- USERS TABLE
-- =============================
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_email VARCHAR(100) UNIQUE NOT NULL,
    user_first_name VARCHAR(50) NOT NULL,
    user_last_name VARCHAR(50) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_last_login TIMESTAMP NULL,
    rowstate VARCHAR(10) CHECK (rowstate IN ('ACTIVE', 'INACTIVE')) DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- =============================
-- ROLES TABLE
-- =============================
CREATE TABLE roles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE NOT NULL,
    role_description VARCHAR(255)
);

-- =============================
-- USER ROLES MAPPING
-- =============================
CREATE TABLE user_roles_mapping (
    user_role_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE
);

-- =============================
-- SUBJECT TABLE
-- =============================
CREATE TABLE subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    subject_code VARCHAR(20) UNIQUE NOT NULL
);

-- =============================
-- USER-SUBJECT MAPPING TABLE
-- =============================
CREATE TABLE user_subject_mapping (
    user_subject_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id) ON DELETE CASCADE
);

-- =============================
-- ROLES & USERS INSERTS
-- =============================
INSERT INTO roles (role_id, role_name, role_description) VALUES
(1, 'Faculty', 'Faculty member of the institution'),
(2, 'Student', 'Enrolled student');

INSERT INTO users (user_id, user_email, user_first_name, user_last_name, user_password, rowstate)
VALUES
(101, 'faculty1@example.com', 'John', 'Doe', '$2a$10$kkTRKIQQuC9nV..GxQmkmOrj.UWg7IyUmhidRFpF0bJInmA4n.X.O', 'ACTIVE'),
(102, 'student1@example.com', 'Alice', 'Smith', '$2a$10$kkTRKIQQuC9nV..GxQmkmOrj.UWg7IyUmhidRFpF0bJInmA4n.X.O', 'ACTIVE');

INSERT INTO user_roles_mapping (user_role_id, user_id, role_id) VALUES
(201, 101, 1),
(202, 102, 2);

-- =============================
-- SUBJECT & MAPPING
-- =============================
INSERT INTO subject (subject_id, subject_name, subject_code) VALUES
(301, 'Mathematics', 'MATH101'),
(302, 'Computer Science', 'CS101');

INSERT INTO user_subject_mapping (user_subject_id, user_id, subject_id) VALUES
(401, 101, 301),
(402, 102, 302);

-- =============================
-- MCQ TABLE
-- =============================
CREATE TABLE mcq (
    question_id INT PRIMARY KEY,
    question VARCHAR(500) NOT NULL,
    option_1 VARCHAR(255) NOT NULL,
    option_2 VARCHAR(255) NOT NULL,
    option_3 VARCHAR(255) NOT NULL,
    option_4 VARCHAR(255) NOT NULL,
    correct_answer VARCHAR(255) NOT NULL
);

-- =============================
-- MCQ TEST TABLE
-- =============================
CREATE TABLE mcq_test (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(100) NOT NULL,
    test_link VARCHAR(255) UNIQUE NOT NULL
);

-- =============================
-- TEST QUESTION MAPPING
-- =============================
CREATE TABLE test_question_mapping (
    test_question_mapping_id INT PRIMARY KEY,
    test_id INT NOT NULL,
    question_id INT NOT NULL,
    FOREIGN KEY (test_id) REFERENCES mcq_test(test_id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES mcq(question_id) ON DELETE CASCADE
);

-- =============================
-- TEST RESPONSE TABLE
-- =============================
CREATE TABLE test_response (
    test_response_id INT PRIMARY KEY,
    test_id INT NOT NULL,
    question_id INT NOT NULL,
    user_id INT NOT NULL,
    response VARCHAR(255),
    FOREIGN KEY (test_id) REFERENCES mcq_test(test_id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES mcq(question_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- =============================
-- MCQ DATA INSERTS
-- =============================
INSERT INTO mcq (question_id, question, option_1, option_2, option_3, option_4, correct_answer) VALUES
(501, 'What is 2 + 2?', '3', '4', '5', '6', '4'),
(502, 'Which language is used for web styling?', 'HTML', 'CSS', 'Java', 'Python', 'CSS'),
(503, 'Who developed Java?', 'Microsoft', 'Sun Microsystems', 'Apple', 'Google', 'Sun Microsystems');

INSERT INTO mcq_test (test_id, test_name, test_link) VALUES
(601, 'Math Basic Test', 'http://example.com/test/math1'),
(602, 'CS Fundamentals Test', 'http://example.com/test/cs1');

INSERT INTO test_question_mapping (test_question_mapping_id, test_id, question_id) VALUES
(701, 601, 501),
(702, 602, 502),
(703, 602, 503);

INSERT INTO test_response (test_response_id, test_id, question_id, user_id, response) VALUES
(801, 601, 501, 102, '4'),
(802, 602, 502, 102, 'HTML'),
(803, 602, 503, 102, 'Sun Microsystems');

-- =============================
-- STUDENT-SUBJECT MAPPING
-- =============================
CREATE TABLE student_subject_mapping (
    student_subject_mapping_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id) ON DELETE CASCADE
);

-- =============================
-- ATTENDANCE TABLE
-- =============================
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    student_subject_mapping_id INT NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    attendance ENUM('PRESENT','ABSENT') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (student_subject_mapping_id) REFERENCES student_subject_mapping(student_subject_mapping_id) ON DELETE CASCADE
);

-- =============================
-- INSERT ATTENDANCE DATA
-- =============================
INSERT INTO student_subject_mapping (student_subject_mapping_id, student_id, subject_id) VALUES
(1001, 102, 301),
(1002, 102, 302);

INSERT INTO attendance (attendance_id, student_subject_mapping_id, date, time, attendance) VALUES
(2001, 1001, '2025-09-19', '09:30:00', 'PRESENT'),
(2002, 1001, '2025-09-20', '09:30:00', 'ABSENT'),
(2003, 1002, '2025-09-19', '11:00:00', 'PRESENT');

-- =============================
-- VIEW DATA (OPTIONAL)
-- =============================
SELECT * FROM users;
SELECT * FROM roles;
SELECT * FROM user_roles_mapping;
SELECT * FROM subject;
SELECT * FROM user_subject_mapping;
SELECT * FROM mcq;
SELECT * FROM mcq_test;
SELECT * FROM test_question_mapping;
SELECT * FROM test_response;
SELECT * FROM student_subject_mapping;
SELECT * FROM attendance;
