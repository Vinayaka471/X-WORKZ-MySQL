create database watch;
use watch;
create table watch_info(id int,brand varchar(25),price bigint,color varchar(25),type varchar(25));
insert into watch_info values(1,'Fastrack',25000,'black','anolog');
insert into watch_info values(2,'Quartz',32000,'white','anolog');
insert into watch_info values(3,'Sonata',50000,'Red','digital');
insert into watch_info values(4,'Apple',72000,'Gray','digital');
select*from watch_info;
