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
