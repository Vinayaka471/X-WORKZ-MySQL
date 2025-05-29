create database hospital_management_system;
use hospital_management_system;

-- Login table
create table login(ID varchar(20), PW varchar(20));
insert into login values("techcoder", "123456789");
select * from login;

-- Patient information table
create table patient_info(
    ID varchar(20), 
    Number varchar(40), 
    Name varchar(20), 
    Gender varchar(20), 
    Patient_Disease varchar(20), 
    Room_Number varchar(20), 
    Time varchar(100), 
    Deposite varchar(20)
);
select * from patient_info;

-- Room table
create table Room(
    room_no varchar(20), 
    Availability varchar(20), 
    Price varchar(20), 
    Room_Type varchar(100)
);

insert into Room values("100", "Available", "500", "G Bed 1");
insert into Room values("101", "Availabil", "500", "G Bed 2");
insert into Room values("102", "Availabil", "500", "G Bed 3");
insert into Room values("103", "Availabil", "500", "G Bed 4");
insert into Room values("200", "Available", "1500", "Private Room");
insert into Room values("201", "Availabil", "1500", "Private Room");
insert into Room values("202", "Available", "1500", "Private Room");
insert into Room values("203", "Availabil", "1500", "Private Room");
insert into Room values("300", "Availabil", "3500", "ICU Bed 1");
insert into Room values("301", "Available", "3500", "ICU Bed 2");
insert into Room values("302", "Available", "3500", "ICU Bed 3");
insert into Room values("303", "Availabil", "3500", "ICU Bed 4");
insert into Room values("304", "Availabil", "3500", "ICU Bed 5");
insert into Room values("305", "Availabil", "3500", "ICU Bed 6");

select * from room;

UPDATE Room
SET Availability = 'Available'
WHERE Availability = 'Availabil';

-- Department table
create table department(
    Department varchar(100), 
    Phone_no varchar(20)
);

insert into department values("Surgical department", "8524682462");
insert into department values("Nursing department", "7246415884");
insert into department values("Operation theator complex (OT)", "9945021024");
insert into department values("Paramedical department", "7482642520");
insert into department values("Outpatient Department (OPD)", "9942365210");
insert into department values("Cardiology", "6248256872");
insert into department values("ICU (Intensive Care Unit)", "8425671258");
select * from department;

-- Employee information table
create table EMP_INFO(
    Name varchar(20), 
    Age varchar(20), 
    Phone_Number varchar(20), 
    salary varchar(20),
    Gmail varchar(20), 
    Aadhar_Number varchar(20)
);

insert into EMP_INFO values("Dr Ravi", "30", "9851252010", "50000", "drravi42@gmail.com", "378915752469");
insert into EMP_INFO values("Dr Harshaputra", "45", "8267349855", "150000", "drharsha85@gmail.com", "384265248842");
insert into EMP_INFO values("Dr Irfan", "40", "7824985249", "200000", "drirfan55@gmail.com", "571243897452");
insert into EMP_INFO values("Dr Joseph", "27", "8542378156", "50000", "drjoseph71@gmail.com", "426972312531");
select * from EMP_INFO;

-- Ambulance table
create table Ambulance(
    Name varchar(20), 
    Gender varchar(20), 
    Car_name varchar(20), 
    Available varchar(20), 
    Location varchar(20)
);

insert into Ambulance values("Anjaneya", "Male", "Maruthi Suzuki", "Available", "Rajajinagar");
insert into Ambulance values("Varuna", "Male", "Zen", "Available", "Yashwanthpura");
insert into Ambulance values("Venu Gopal", "Male", "Force Traveller", "Unavailable", "Yalahanka");
insert into Ambulance values("Rihan", "Male", "Eco", "Available", "Jalahalli");
insert into Ambulance values("Abhishek", "Male", "Bolero", "Unavailable", "RR Nagara");
select * from Ambulance;
