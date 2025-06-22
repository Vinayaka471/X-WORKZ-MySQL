create database flowershop;
use flowershop;
create table flowers(id int,name varchar(25),price bigint,color varchar(25));
insert into flowers values(1,'Rose',47,'Red');
insert into flowers values(2,'Lily',60,'White');
insert into flowers values(3,'Hibiscus',20,'Orange');
insert into flowers values(4,'Lotus',120,'Pink');
insert into flowers values(5,'Sun Flower',150,'Yellow');
select *from flowers;
