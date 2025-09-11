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

insert into users(user_id,user_email,user_first_name,user_last_name,user_password,rowstate) values(101, 'faculty1@example.com','Jhon', 'Doe', ' $2a$10$kkTRKIQQuC9nV..GxQmkmOrj.UWg7IyUmhidRFpF0bJInmA4n.X.O', 'ACTIVE'), (102, 'student1@example.com','Alice', 'Smith', ' $2a$10$kkTRKIQQuC9nV..GxQmkmOrj.UWg7IyUmhidRFpF0bJInmA4n.X.O', 'ACTIVE');

insert into user_roles_mapping(user_role_id, user_id, role_id) values(201, 101, 1), (202, 102, 2);

insert into subject (subject_id, subject_name, subject_code) values(301, 'Mathematics', 'MATH101'), (302, 'Computer Science', 'CS101');

insert into user_subject_mapping (user_subject_id, user_id, subject_id) values (401, 101, 301), (402, 102, 302);
 
select * from users;
select * from roles;
select * from user_roles_mapping;
select * from subject;
select * from user_subject_mapping;




