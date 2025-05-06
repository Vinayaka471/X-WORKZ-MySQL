create database mobile;
use mobile;
create table mobile_items(id int,name varchar(25),type varchar(25),color varchar(25));
insert into mobile_items values (1,'Redmi','Screentouch','White');
insert into mobile_items values(2,'Nokia','Keypad','Black');
insert into mobile_items values(3,'Tecno','Screentouch','Green');
insert into mobile_items values(4,'Oneplus','Screentouch','Black');
insert into mobile_items values(5,'Jio','Keypad','Gray');
select*from mobile_items;

