create database Bag;
use Bag;
create table Bag_info(id int,brand varchar(30),color varchar(25),price bigint);
insert into Bag_info values(1,'Eligible','Blue',800);
insert into Bag_info values(2,'HP','Black',950);
insert into Bag_info values(3,'Safari','Black',1000);
insert into Bag_info values(4,'Bagsbags','Blue',8000);
select*from Bag_info;