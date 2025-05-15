create database fruit;
use fruit;
create table fruit_info(id int,name varchar(25),color varchar(25),price int(25));
insert into fruit_info values(1,"Apple","Red",60);
insert into fruit_info values(2,"Mango","Yellow",100);
insert into fruit_info values(3,"Orange","Orange",60);
insert into fruit_info values(1,"Banana","Yellow",40);
insert into fruit_info values(1,"Grapes","Green",80);
select*from fruit_info;