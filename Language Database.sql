create database language;
use language;
create table language_info (id int, name varchar(25),city varchar(25),country varchar(25),speakers bigint);
insert into language_info values(1,"Kannada","Shivamogga","India",56.600000);
insert into language_info values(2,'English','Scotland','United Kingdom',52.600000);
insert into language_info values(3,'Korean','Seoul','South Korea',81.000000);
insert into language_info values(4,'French','Moncton','Canada',320.000000);
select*from language_info;