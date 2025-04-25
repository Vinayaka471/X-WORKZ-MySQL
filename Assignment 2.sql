create database airlines;
create database country;
create database state;

use airlines;
create table airlines(airline_id int, airline_name varchar(50), country varchar(50), established_year int, fleet_size int);
alter table airlines add ceo varchar(50);
alter table airlines add headqurters varchar(100);

alter table airlines add rating float;

alter table airlines rename column airline_name to airline_title;
alter table airlines rename column fleet_size to total_fleet;
alter table airlines rename column rating to customer_rating;

alter table airlines modify column customer_rating varchar(10);
alter table airlines modify column total_fleet smallint;
alter table airlines modify column established_year year;

insert into airlines(airline_id,airline_title,country,established_year,total_fleet,ceo,headqurters,customer_rating)
values(1,'Indigo','India',2006,300,'Pieter Elbers','Gurugram','4.5');
insert into airlines values(2,'Air India','India',1932,120,'Campbell Wilson','New Delhi','4.0');
insert into airlines values(3,'SpiceJet','India',2005,90,'Ajay Singh','Gurugram','3.8');
insert into airlines values(4,'Go First','India',2005,55,'Kaushik Khona','Mumbai','3.5');
insert into airlines Values (5, 'Vistara', 'India', 2013, 45, 'Vinod Kannan', 'Gurugram', '4.2');
insert into airlines values (6, 'AirAsia India', 'India', 2014, 35, 'Sunil Bhaskaran', 'Bengaluru', '3.9');
insert into airlines Values (7, 'Jet Airways', 'India', 1992, 75, 'Sanjiv Kapoor', 'Mumbai', '4.1');
insert into airlines Values (8, 'Akasa Air', 'India', 2021, 20, 'Vinay Dube', 'Mumbai', '4.4');
insert into airlines Values (9, 'Qatar Airways', 'Qatar', 1993, 250, 'Akbar Al Baker', 'Doha', '4.9');
insert into airlines Values (10, 'Emirates', 'UAE', 1985, 270, 'Tim Clark', 'Dubai', '4.8');
insert into airlines Values (11, 'Singapore Airlines', 'Singapore', 1947, 130, 'Goh Choon Phong', 'Singapore', '4.9');
insert into airlines Values (12, 'Lufthansa', 'Germany', 1953, 290, 'Carsten Spohr', 'Cologne', '4.6');
insert into airlines Values (13, 'British Airways', 'UK', 1974, 280, 'Sean Doyle', 'London', '4.3');
insert into airlines Values(14, 'Delta Airlines', 'USA', 1929, 800, 'Ed Bastian', 'Atlanta', '4.5');
insert into airlines Values (15, 'United Airlines', 'USA', 1926, 750, 'Scott Kirby', 'Chicago', '4.4');
insert into airlines Values (16, 'American Airlines', 'USA', 1930, 850, 'Robert Isom', 'Fort Worth', '4.2');
insert into airlines Values (17, 'Air France', 'France', 1933, 300, 'Anne Rigail', 'Paris', '4.1');
insert into airlines Values (18, 'Turkish Airlines', 'Turkey', 1933, 350, 'Bilal Ekşi', 'Istanbul', '4.3');
insert into airlines Values(19, 'Etihad Airways', 'UAE', 2003, 100, 'Antonoaldo Neves', 'Abu Dhabi', '4.6');
insert into airlines Values (20, 'Thai Airways', 'Thailand', 1960, 85, 'Chai Eamsiri', 'Bangkok', '4.0');

select * from airlines;

use country_info;

create table country_info(country_id int, country_name varchar(50),continent varchar(50),population bigint,official_language varchar(50));

alter table country_info add capital varchar(50);
alter table country_info add currency varchar(50);
alter table country_info add internet_domain varchar(10);

alter table country_info rename column country_name to name;
alter table country_info rename column official_language to language;
alter table country_info rename column internet_domain to domain;

alter table country_info modify column name varchar(100);
alter table country_info modify column domain varchar(20);
alter table country_info modify column currency char(3);

insert into country_info (country_id, name, continent, population, language, capital, currency, domain)
values (1, 'India', 'Asia', 1400000000, 'Hindi', 'New Delhi', 'INR', '.in');
insert into country_info values(2, 'United States', 'North America', 331000000, 'English', 'Washington D.C.', 'USD', '.us');
insert into country_info values(3, 'United Kingdom', 'Europe', 68000000, 'English', 'London', 'GBP', '.uk');
insert into country_info values(4, 'Germany', 'Europe', 83000000, 'German', 'Berlin', 'EUR', '.de');
insert into country_info values(5, 'France', 'Europe', 67000000, 'French', 'Paris', 'EUR', '.fr');
insert into country_info values(6, 'Japan', 'Asia', 125000000, 'Japanese', 'Tokyo', 'JPY', '.jp');
insert into country_info values(7, 'China', 'Asia', 1440000000, 'Mandarin', 'Beijing', 'CNY', '.cn');
insert into country_info values(8, 'Canada', 'North America', 38000000, 'English/French', 'Ottawa', 'CAD', '.ca');
insert into country_info values(9, 'Brazil', 'South America', 213000000, 'Portuguese', 'Brasília', 'BRL', '.br');
insert into country_info values(10, 'Russia', 'Europe/Asia', 145000000, 'Russian', 'Moscow', 'RUB', '.ru');
insert into country_info values(11, 'Australia', 'Australia', 25000000, 'English', 'Canberra', 'AUD', '.au');
insert into country_info values(12, 'Italy', 'Europe', 60000000, 'Italian', 'Rome', 'EUR', '.it');
insert into country_info values(13, 'Mexico', 'North America', 126000000, 'Spanish', 'Mexico City', 'MXN', '.mx');
insert into country_info values(14, 'South Korea', 'Asia', 52000000, 'Korean', 'Seoul', 'KRW', '.kr');
insert into country_info values(15, 'Saudi Arabia', 'Asia', 35000000, 'Arabic', 'Riyadh', 'SAR', '.sa');
insert into country_info values(16, 'Spain', 'Europe', 47000000, 'Spanish', 'Madrid', 'EUR', '.es');
insert into country_info values(17, 'Indonesia', 'Asia', 273000000, 'Indonesian', 'Jakarta', 'IDR', '.id');
insert into country_info values(18, 'Turkey', 'Asia/Europe', 85000000, 'Turkish', 'Ankara', 'TRY', '.tr');
insert into country_info values(19, 'Netherlands', 'Europe', 17000000, 'Dutch', 'Amsterdam', 'EUR', '.nl');
insert into country_info values(20, 'Thailand', 'Asia', 70000000, 'Thai', 'Bangkok', 'THB', '.th');

select * from country_info;

use state;
create table state_info(state_id int, state_name varchar(50), country varchar(50),population bigint,districts int);

alter table state_info add capital varchar(50);
alter table state_info add language varchar(50);
alter table state_info add established_year int;

alter table state_info rename column state_name to name;
alter table state_info rename column districts to total_districts;

alter table state_info modify column name varchar(100);
alter table state_info modify column language varchar(100);

insert into state_info (state_id, name, country, population, total_districts, capital, language, established_year) 
values (1, 'Karnataka', 'India', 70000000, 31, 'Bengaluru', 'Kannada', 1956);
insert into state_info values(2, 'Maharashtra', 'India', 112000000, 36, 'Mumbai', 'Marathi', 1960);
insert into state_info values(3, 'Tamil Nadu', 'India', 75000000, 38, 'Chennai', 'Tamil', 1956);
insert into state_info  values(4, 'Kerala', 'India', 35000000, 14, 'Thiruvananthapuram', 'Malayalam', 1956);
insert into state_info  values(5, 'Gujarat', 'India', 63000000, 33, 'Gandhinagar', 'Gujarati', 1960);
insert into state_info  values(6, 'Rajasthan', 'India', 81000000, 50, 'Jaipur', 'Hindi', 1956);
insert into state_info values(7, 'Punjab', 'India', 30000000, 23, 'Chandigarh', 'Punjabi', 1966);
insert into state_info values(8, 'West Bengal', 'India', 91000000, 23, 'Kolkata', 'Bengali', 1947);
insert into state_info values(9, 'Bihar', 'India', 104000000, 38, 'Patna', 'Hindi', 1912);
insert into state_info values(10, 'Uttar Pradesh', 'India', 230000000, 75, 'Lucknow', 'Hindi', 1950);
insert into state_info values(11, 'Andhra Pradesh', 'India', 53000000, 26, 'Amaravati', 'Telugu', 1956);
insert into state_info values(12, 'Telangana', 'India', 39000000, 33, 'Hyderabad', 'Telugu', 2014);
insert into state_info values(13, 'Madhya Pradesh', 'India', 85000000, 52, 'Bhopal', 'Hindi', 1956);
insert into state_info values(14, 'Odisha', 'India', 45000000, 30, 'Bhubaneswar', 'Odia', 1936);
insert into state_info values(15, 'Jharkhand', 'India', 38000000, 24, 'Ranchi', 'Hindi', 2000);
insert into state_info values(16, 'Haryana', 'India', 28000000, 22, 'Chandigarh', 'Hindi', 1966);
insert into state_info values(17, 'Chhattisgarh', 'India', 30000000, 33, 'Raipur', 'Hindi', 2000);
insert into state_info values(18, 'Assam', 'India', 36000000, 35, 'Dispur', 'Assamese', 1947);
insert into state_info values(19, 'Himachal Pradesh', 'India', 7500000, 12, 'Shimla', 'Hindi', 1971);
insert into state_info values(20, 'Goa', 'India', 1800000, 2, 'Panaji', 'Konkani', 1987);


select*from state_info;