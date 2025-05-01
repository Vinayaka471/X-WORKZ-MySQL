create database cars;

use cars;
create table cars(car_id int primary key, brand varchar(50), model varchar(50), color varchar(30), fuel_type varchar(20), transmission varchar(20), price int, mileage int);

insert into cars values (1, 'Toyota', 'Camry', 'White', 'Petrol', 'Automatic', 25000, 18);
insert into cars values (2, 'Honda', 'Civic', 'Black', 'Petrol', 'Manual', 22000, 20);
insert into cars values (3, 'Hyundai', 'i20', 'Red', 'Diesel', 'Manual', 15000, 23);
insert into cars values (4, 'Ford', 'Figo', 'Blue', 'Diesel', 'Automatic', 17000, 21);
insert into cars values (5, 'Kia', 'Seltos', 'Grey', 'Petrol', 'Manual', 24000, 19);
insert into cars values (6, 'Maruti', 'Swift', 'Silver', 'Petrol', 'Manual', 14000, 21);
insert into cars values (7, 'Tata', 'Nexon', 'Orange', 'Petrol', 'Automatic', 23000, 18);
insert into cars values(8, 'Mahindra', 'XUV300', 'Black', 'Diesel', 'Manual', 26000, 22);
insert into cars values (9, 'Renault', 'Kwid', 'Red', 'Petrol', 'Manual', 12000, 25);
insert into cars values (10, 'Skoda', 'Rapid', 'White', 'Diesel', 'Automatic', 20000, 20);
insert into cars values (11, 'Nissan', 'Magnite', 'Grey', 'Petrol', 'Manual', 18000, 21);
insert into cars values (12, 'Volkswagen', 'Polo', 'Blue', 'Petrol', 'Manual', 16000, 19);
insert into cars values (13, 'Jeep', 'Compass', 'Green', 'Diesel', 'Automatic', 30000, 17);
insert into cars values (14, 'MG', 'Hector', 'Silver', 'Petrol', 'Automatic', 28000, 16);
insert into cars values (15, 'Audi', 'A4', 'Black', 'Petrol', 'Automatic', 40000, 15);
insert into cars values (16, 'BMW', 'X1', 'White', 'Diesel', 'Automatic', 45000, 14);
insert into cars values (17, 'Mercedes', 'C-Class', 'Blue', 'Petrol', 'Automatic', 50000, 13);
insert into cars values (18, 'Volvo', 'XC40', 'Grey', 'Diesel', 'Automatic', 47000, 15);
insert into cars values (19, 'Lexus', 'NX', 'Red', 'Petrol', 'Automatic', 55000, 16);
insert into cars values (20, 'Jaguar', 'XE', 'Black', 'Petrol', 'Automatic', 60000, 12);

update cars set color='Silver' where car_id=1;
update cars set transmission='Manual' where car_id=2;
update cars set mileage=22 where car_id=3;
update cars set price = 16000 where car_id = 4;
update cars set fuel_type = 'CNG' where car_id = 5;
update cars set model = 'Baleno' where car_id = 6;
update cars set brand = 'Tata' where car_id = 7;
update cars set color = 'Yellow' where car_id = 8;
update cars set transmission = 'Automatic' where car_id = 9;
update cars set mileage = 24 where car_id = 10;

delete from cars where brand = 'Ford';
delete from cars where brand = 'Hyundai' and transmission = 'Manual';
delete from cars where price > 20000 or mileage > 22;
delete from cars where brand in ('Kia', 'Maruti');
delete from cars where brand not in ('Toyota', 'Honda');
delete from cars where price between 10000 and 15000;
delete from cars where mileage not between 15 and 22;

select * from cars
where brand='Hyundai';


select*from cars
where color='Black';

select*from cars
where fuel_type='Petrol';

select*from cars
where transmission='Automatic';

select * from cars 
where brand = 'Toyota' and color = 'White';

select * from cars
where brand between 'Hyundai' and 'Mercedes';

select * from cars 
where color = 'Red' or color = 'Black';


select * from cars 
where model in('A4','polo');

select * from cars 
where model not in('A4','polo');

select * from cars
where price between 18000 and 47000;

select * from cars
where brand not between 'Hyundai' and'Mercedes';

update cars set color='Beige' where brand= 'Toyota' and price <30000;
update cars set price = 1000 WHERE brand = 'Honda' or mileage > 20;
update cars set fuel_type = 'CNG' where brand in ('Maruti', 'Hyundai');
update cars set transmission = 'Manual' where brand not in ('BMW', 'Audi');
update cars set price =  2000 where price between 15000 and 25000;
update cars set mileage = 4 where mileage not between 15 and 22;

select*from cars;


create database employees;

use employees;

create table employees(emp_id int primary key, first_name varchar(50),last_name varchar(50),department varchar(50),designation varchar(50),salary int,city varchar(50),contact varchar(15));

insert into employees values(1, 'John', 'Doe', 'IT', 'Developer', 45000.00, 'Bangalore', '9876543210');
insert into employees values(2, 'Jane', 'Smith', 'HR', 'Recruiter', 35000.00, 'Mumbai', '8765432109');
insert into employees values (3, 'Alan', 'Walker', 'Finance', 'Analyst', 50000.00, 'Delhi', '7654321098');
insert into employees values (4, 'Emily', 'Davis', 'Support', 'Support Engineer', 30000.00, 'Chennai', '6543210987');
insert into employees values (5, 'Michael', 'Brown', 'Sales', 'Sales Executive', 32000.00, 'Hyderabad', '5432109876');
insert into employees values (6, 'Sarah', 'Wilson', 'IT', 'Tester', 38000.00, 'Pune', '4321098765');
insert into employees values (7, 'David', 'Taylor', 'Marketing', 'Marketing Lead', 47000.00, 'Kolkata', '3210987654');
insert into employees values(8, 'Laura', 'Moore', 'Finance', 'Accountant', 40000.00, 'Delhi', '2109876543');
insert into employees values (9, 'James', 'Anderson', 'Management', 'Manager', 60000.00, 'Bangalore', '1098765432');
insert into employees values (10, 'Linda', 'Clark', 'Support', 'Technician', 31000.00, 'Chennai', '9988776655');
insert into employees values (11, 'Robert', 'Lewis', 'IT', 'Developer', 46000.00, 'Bangalore', '8877665544');
insert into employees values (12, 'Barbara', 'Hall', 'HR', 'Coordinator', 33000.00, 'Hyderabad', '7766554433');
insert into employees values (13, 'Charles', 'Allen', 'Sales', 'Executive', 34000.00, 'Mumbai', '6655443322');
insert into employees values (14, 'Jessica', 'Young', 'Finance', 'Analyst', 52000.00, 'Delhi', '5544332211');
insert into employees values(15, 'Daniel', 'Hernandez', 'IT', 'Support', 39000.00, 'Pune', '4433221100');
insert into employees values (16, 'Nancy', 'King', 'Marketing', 'Specialist', 36000.00, 'Kolkata', '3322110099');
insert into employees values (17, 'Steven', 'Wright', 'Finance', 'Auditor', 48000.00, 'Delhi', '2211009988');
insert into employees values (18, 'Karen', 'Lopez', 'Support', 'Support Engineer', 30500.00, 'Chennai', '1100998877');
insert into employees values(19, 'Brian', 'Hill', 'Management', 'Team Lead', 58000.00, 'Bangalore', '0099887766');
insert into employees values (20, 'Susan', 'Scott', 'IT', 'Tester', 37000.00, 'Pune', '9988776654');


update employees set salary = 47000 where emp_id = 1;
update employees set city = 'Mysore' where emp_id = 2;
update employees set designation = 'Senior Analyst' where emp_id = 3;
update employees set department = 'Customer Support' where emp_id = 4;
update employees set first_name = 'Mike' where emp_id = 5;
update employees set contact = '1112223334' where emp_id = 6;
update employees set salary = 49000 where emp_id = 7;
update employees set city = 'Ahmedabad' where emp_id = 8;
update employees set department = 'Executive' where emp_id = 9;
update employees set designation = 'Support Staff' where emp_id = 10;

delete from employees where department = 'Sales';
delete from employees where department = 'IT' and city = 'Bangalore';
delete from employees where salary > 50000 or city = 'Mumbai';
delete from employees where department in ('HR', 'Support');
delete from employees where designation not in ('Manager', 'Analyst');
delete from employees where salary between 20000 and 30000;
delete from employees where salary not between 35000 and 60000;

select * from employees 
where department ='Finance';

select * from employees
where city = 'Delhi';

select * from employees
where designation = 'Developer';

select * from employees
where salary>50000;

select * from employees
where first_name='Emily';

select * from employees 
where city = 'Chennai' and department = 'Support';

select * from employees 
where department = 'IT' or department = 'HR';

select * from employees 
where designation in ('Developer', 'Designer');

select * from employees
 where department not in ('Sales');
 
select * from employees 
where salary BETWEEN 30000 AND 60000;

select * from employees 
where salary not between 40000 and 50000;


update employees set salary = 3000 where department = 'Finance' and city = 'Delhi';
update employees set city = 'Pune' where department = 'IT' or designation = 'Developer';
update employees set department = 'Tech Support' where designation in ('Support Engineer', 'Technician');
update employees set designation = 'Staff' where department not in ('Management', 'Finance');
update employees set salary = salary - 1500 where salary between 35000 and 45000;
update employees set contact = 'N/A' where salary not between 30000 and 60000;


create database products;

use products;

create table products(product_id int primary key, product_name varchar(50),category varchar(50),brand varchar(50),price int,stock_quantity int, supplier varchar(50),location varchar(50));

insert into products values (1, 'Smartphone', 'Electronics', 'Samsung', 799, 100, 'TechMart', 'Warehouse A');
insert into products values  (2, 'Laptop', 'Electronics', 'Apple', 1299, 50, 'GadgetStore', 'Warehouse B');
insert into products values  (3, 'Washing Machine', 'Appliances', 'LG', 499, 30, 'HomeNeeds', 'Warehouse C');
insert into products values  (4, 'Refrigerator', 'Appliances', 'Whirlpool', 699, 20, 'CoolingCo', 'Warehouse D');
insert into products values  (5, 'Television', 'Electronics', 'Sony', 899, 25, 'TVWorld', 'Warehouse E');
insert into products values  (6, 'Microwave Oven', 'Appliances', 'Samsung', 199, 40, 'TechMart', 'Warehouse A');
insert into products values  (7, 'Blender', 'Kitchen', 'Philips', 59, 70, 'KitchenPlus', 'Warehouse F');
insert into products values  (8, 'Headphones', 'Accessories', 'Boat', 29, 120, 'SoundTech', 'Warehouse G');
insert into products values  (9, 'Smartwatch', 'Wearables', 'Apple', 399, 35, 'GadgetStore', 'Warehouse B');
insert into products values  (10, 'Camera', 'Electronics', 'Canon', 549, 18, 'ClickIt', 'Warehouse H');
insert into products values  (11, 'Air Conditioner', 'Appliances', 'LG', 799, 15, 'HomeNeeds', 'Warehouse C');
insert into products values  (12, 'Tablet', 'Electronics', 'Samsung', 299, 45, 'TechMart', 'Warehouse A');
insert into products values  (13, 'Router', 'Networking', 'TP-Link', 49, 60, 'NetGear', 'Warehouse I');
insert into products values  (14, 'Vacuum Cleaner', 'Appliances', 'Eureka', 149, 22, 'CleanHome', 'Warehouse J');
insert into products values  (15, 'Coffee Maker', 'Kitchen', 'Prestige', 89, 33, 'KitchenPlus', 'Warehouse F');
insert into products values  (16, 'Monitor', 'Electronics', 'Dell', 229, 29, 'ScreenZone', 'Warehouse K');
insert into products values  (17, 'Printer', 'Electronics', 'HP', 159, 38, 'OfficeSupplies', 'Warehouse L');
insert into products values  (18, 'Keyboard', 'Accessories', 'Logitech', 39, 95, 'CompStore', 'Warehouse M');
insert into products values  (19, 'Mouse', 'Accessories', 'Logitech', 24, 110, 'CompStore', 'Warehouse M');
insert into products values  (20, 'Speaker', 'Audio', 'JBL', 119, 55, 'SoundHub', 'Warehouse N');

update products set price = 899.99 where product_id = 1;
update products set location = 'Main Warehouse' where product_id = 2;
update products set stock_quantity = stock_quantity + 10 where product_id = 3;
update products set supplier = 'HomeDepot' where product_id = 4;
update products set price = 950.00 where product_id = 5;
update products set location = 'New Warehouse' where product_id = 6;
update products set category = 'Small Appliances' where product_id = 7;
update products set price = 24.99 where product_id = 8;
update products set stock_quantity = 40 where product_id = 9;
update products set supplier = 'ImageTech' where product_id = 10;


delete from products where category = 'Accessories';
delete from products where brand = 'Samsung' AND price < 500;
delete from products where price > 1000 OR stock_quantity < 20;
delete from products where category IN ('Clothing', 'Furniture');
delete from products where brand NOT IN ('Apple', 'Sony');
delete from products where price BETWEEN 300 AND 800;
delete from products where stock_quantity NOT BETWEEN 50 AND 200;

select * from products where category = 'Electronics';
select * from products where brand = 'Sony';
select * from products where price > 500;
select * from products where stock_quantity < 100;
select * from products where supplier = 'TechMart';
select * from products where location = 'Main Warehouse';


select * from products where category = 'Electronics' and brand = 'Sony';
select * from products where price > 500 or stock_quantity < 50;
select * from products where brand in ('Apple', 'Samsung');
select * from products where supplier not in ('TechMart', 'MegaWarehouse');
select * from products where price between 300 and 800;
select * from products where stock_quantity not between 30 and 150;


update products set price = 100 where category = 'Electronics' and brand = 'Sony';
update products set  stock_quantity = stock_quantity - 10 WHERE brand = 'Apple' or supplier = 'TechMart';
update products set  category = 'Home Appliance' where brand in ('LG', 'Whirlpool');
update products set   supplier = 'GeneralSupplier' where brand not in ('Samsung', 'Sony');
update products set  price = price * 0.95 where price between 500 and 1000;
update products set location = 'Overflow Warehouse' where stock_quantity not between 50 and 200;


use employees;
select*from employees;

select count(*) from employees;

select sum(salary) as total_salary from employees;

select max(Salary) as max_salary from employees;

select min(salary) as min_salary from employees;

select avg(salary) as avg_salary from employees;

select*from employees;
 
	select  first_name,max(salary) from employees
	where department='IT';
    
select first_name,max(salary) as max_sal from employees
group by department having max_sal>47000;

select designation,min(salary) as min_salary from employees
group by department having min_salary<58000;

select last_name,max(salary) as max_sal from employees
group by city having max_sal>45000;

select count(*) from employees;

select sum(salary) from employees;

select count(salary) from employees;

select max(salary) from employees;

select min(salary) from employees;

select avg(salary) from employees;

select department,sum(salary) from employees
where designation='Analyst';

select first_name ,sum(salary)as sum_sal from employees
where department='IT' having sum_sal>42000;

select min(salary) from employees; 

select sum(salary) as max_salary from employees;

select max(salary) as max_salary from employees;

select min(salary) as min_salary from employees;

select avg(salary) as avg_salary from employees;

select first_name,max(salary) as max_salary from employees
group by contact  having max_salary>52000;




select*from employees where first_name like'a%';

select*from employees where last_name like'%e';