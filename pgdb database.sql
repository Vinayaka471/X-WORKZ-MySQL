create database pgdb;
use pgdb;
create table users(id int primary key, username varchar(50) unique not null, userpassword varchar(100) not null);
create table roles(id int primary key, role_name varchar(50) unique not null);
create table user_role_mapping(id int primary key, user_id int not null, role_id int not null, foreign key(user_id) references users(id), foreign key(role_id) references roles(id));

drop table if exists user_role_mapping;
drop table if exists role;

select * from users;
select * from roles;
select * from user_role_mapping;


insert into roles (id, role_name) values (1, 'Faculty'), (2, 'Student');

insert into users(username, userpassword) values ('Faculty1','{noop}faculty123');
insert into users(username, userpassword) values ('Student1','{noop}student123');

insert into user_role_mapping(user_id, role_id) values (1,1);
insert into user_role_mapping(user_id, role_id) values (2,2);
DROP DATABASE IF EXISTS pgdb;

create database pgdb;
use pgdb;

create table users(user_id int primary key, user_email varchar(100) unique not null, user_first_name varchar(50) not null, user_last_name varchar(50) not null, user_password varchar(255) not null, user_last_login timestamp, rowstate varchar(10) check(rowstate in('ACTIVE','INACTIVE')) default 'ACTIVE', created_at timestamp default current_timestamp, updated_at timestamp default current_timestamp);

create table roles(role_id int primary key, role_name varchar(50) unique not null, role_description varchar(255));

create table user_roles_mapping(user_role_id int primary key, user_id int not null, role_id int not null, foreign key (user_id) references users(user_id) on delete cascade, foreign key (role_id) references roles(role_id) on delete cascade);

create table subject(subject_id int primary key, subject_name varchar(100) not null, subject_code varchar(20) unique not null);

create table user_subject_mapping (user_subject_id int primary key, user_id int not null, subject_id int not null, foreign key (user_id) references users(user_id) on delete cascade,foreign key (subject_id)  references subject(subject_id)  on delete cascade);

insert into roles (role_id, role_name, role_description) values(1,'Faculty','Faculty memeber of the institution'),(2,'Student','Enrolled student');

insert into users(user_id,user_email,user_first_name,user_last_name,user_password,rowstate) values(101, 'faculty1@example.com','Jhon', 'Doe', '$2a$10$kkTRKIQQuC9nV..GxQmkmOrj.UWg7IyUmhidRFpF0bJInmA4n.X.O', 'ACTIVE'), (102, 'student1@example.com','Alice', 'Smith', '$2a$10$kkTRKIQQuC9nV..GxQmkmOrj.UWg7IyUmhidRFpF0bJInmA4n.X.O', 'ACTIVE');

insert into user_roles_mapping(user_role_id, user_id, role_id) values(201, 101, 1), (202, 102, 2);

insert into subject (subject_id, subject_name, subject_code) values(301, 'Mathematics', 'MATH101'), (302, 'Computer Science', 'CS101');

insert into user_subject_mapping (user_subject_id, user_id, subject_id) values (401, 101, 301), (402, 102, 302);


create table mcq (question_id int primary key, question varchar(500) not null, option_1 varchar(255) not null, option_2 varchar(255) not null, option_3 varchar(255) not null, option_4 varchar(255) not null, correct_answer varchar(255) not null);

create table mcq_test (test_id int primary key, test_name varchar(100) not null, test_link varchar(255) unique not null);

create table test_question_mapping (test_question_mapping_id int primary key, test_id int not null, question_id int not null, foreign key (test_id) references mcq_test(test_id) on delete cascade, foreign key (question_id) references mcq(question_id) on delete cascade);
 
 
 create table test_response (test_response_id int primary key, test_id int not null, question_id int not null, user_id int not null, response varchar(255), foreign key (test_id) references mcq_test(test_id) on delete cascade, foreign key (question_id) references mcq(question_id) on delete cascade, foreign key (user_id) references users(user_id) on delete cascade);


insert into mcq (question_id, question, option_1, option_2, option_3, option_4, correct_answer) values (501, 'What is 2 + 2?', '3', '4', '5', '6', '4'), (502, 'Which language is used for web styling?', 'HTML', 'CSS', 'Java', 'Python', 'CSS'), (503, 'Who developed Java?', 'Microsoft', 'Sun Microsystems', 'Apple', 'Google', 'Sun Microsystems');

insert into mcq_test (test_id, test_name, test_link) values  (601, 'Math Basic Test', 'http://example.com/test/math1'), (602, 'CS Fundamentals Test', 'http://example.com/test/cs1');

insert into test_question_mapping (test_question_mapping_id, test_id, question_id) values
(701, 601, 501), -- Math test -> 2+2
(702, 602, 502), -- CS test -> CSS
(703, 602, 503); -- CS test -> Java

insert into test_response (test_response_id, test_id, question_id, user_id, response)
values
(801, 601, 501, 102, '4'),           -- Student answered Math correctly
(802, 602, 502, 102, 'HTML'),        -- Student answered CS wrong
(803, 602, 503, 102, 'Sun Microsystems'); -- Student answered CS correct



create table student_subject_mapping(student_subject_mapping_id int primary key, student_id int not null, subject_id int not null, foreign key (student_id) references users(user_id) on delete cascade, foreign key (subject_id) references subject(subject_id) on delete cascade);

create table attendance (
    attendance_id int primary key,
    student_subject_mapping_id int not null,
    date date not null,
    time time not null,
    attendance enum('PRESENT','ABSENT') not null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    foreign key (student_subject_mapping_id) references student_subject_mapping(student_subject_mapping_id) on delete cascade
);


-- Insert student-subject mappings
insert into student_subject_mapping (student_subject_mapping_id, student_id, subject_id) 
values (1001, 102, 301), -- Student Alice -> Math
       (1002, 102, 302); -- Student Alice -> CS

-- Insert attendance
insert into attendance (attendance_id, student_subject_mapping_id, date, time, attendance) 
values (2001, 1001, '2025-09-19', '09:30:00', 'PRESENT'),
       (2002, 1001, '2025-09-20', '09:30:00', 'ABSENT'),
       (2003, 1002, '2025-09-19', '11:00:00', 'PRESENT');


select * from users;
select * from roles;
select * from user_roles_mapping;
select * from subject;
select * from user_subject_mapping;
select * from mcq;
select * from mcq_test;
select * from test_question_mapping;
select * from test_response;
select * from student_subject_mapping;
select * from attendance;






