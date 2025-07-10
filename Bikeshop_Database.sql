create database Bikeshop;
use Bikeshop;
create table Bike(id int,name varchar(25),color varchar(25),price bigint,mileage int);
insert into Bike values(1,'TVS Sport','Red',60000,60);
insert into Bike values(2,'Hero Xtreme','Black',120000,50);
insert into Bike values(3,'Bajaj Passion Pro','Blue',45000,65);
insert into Bike values(4,'Honda','White',50000,55);
insert into Bike values(5,'Hero Passion Pro','Green',55000,50);
select*from Bike;