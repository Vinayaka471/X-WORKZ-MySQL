create database Laptop;
use Laptop;
create table Laptop_info(id int,brand varchar(30),price bigint,color varchar(30),type varchar(30));
insert into Laptop_info values(1,'hp',45000,'silver','rizon');
insert into Laptop_info values(2,'asus',55000,'Gray','intel');
insert into Laptop_info values(3,'dell',40000,'black','intel');
insert into Laptop_info values(4,'Lenovo',75000,'brown','rizon');
select*from Laptop_info;

