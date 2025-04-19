create database gadget;
create database flower;
create database cloth;
create database car;

use gadget;
create table gadget_items(id int,item varchar(25),brand varchar(30),price bigint,location varchar(25),quality varchar(15),color varchar(15),stocks int,warrantyperiod varchar(20),launchdate date);


use flower;
create table flower_items(id int,flowername varchar(25),species varchar(30),price bigint,location varchar(25),rating varchar(15),color varchar(15),stocks int,fragrance varchar(20),sunlightrequired varchar(50));

use cloth;
create table cloth_items(id int,item varchar(25),brand varchar(30),price bigint,location varchar(25),quality varchar(15),color varchar(15),stocks int,warrantyperiod varchar(20),launchdate date);



use car;
create table gadget_items(id int,brand varchar(25),type varchar(30),price bigint,location varchar(25),quality varchar(15),color varchar(15),stocks int,warrantyperiod varchar(20),launchdate date);