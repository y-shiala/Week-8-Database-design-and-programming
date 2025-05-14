-- Create database
use my_clinic;
-- Patients table
create table Patients(
patient_id int primary key auto_increment,
first_name varchar(100) not null,
last_name varchar(100) not null,
date_of_birth date not null,
gender varchar(10),
phone varchar(20),
email varchar(20),
address text,
insurance_info text
);

-- Doctors table
create table Doctors(
doctor_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
specialization varchar(100) not null,
phone varchar(20),
email varchar(100)
);

-- Appointments table
create table Appointments(
appointment_id int primary key auto_increment,
patient_id int not null,
doctor_id int not null,
appointment_date datetime not null,
status varchar(50) not null check (status in ('Scheduled', 'Completed', 'Cancelled')),
foreign key(patient_id) references Patients(patient_id),
foreign key(doctor_id) references Doctors(doctor_id)
); 

-- Medical Records table
create table MedicalRecords(
record_id int primary key auto_increment,
appointment_id int not null,
diagnosis text,
prescriptions text,
notes text,
foreign key(appointment_id) references Appointments(appointment_id)
);

-- Billing table
create table Billing(
billing_id int primary key auto_increment,
appointment_id int not null,
amount decimal(10, 2) not null,
billing_date date not null,
payment_status varchar(50) not null check(payment_status in ('Paid', 'Unpaid', 'Pending')),
foreign key(appointment_id) references Appointments(appointment_id)
);

-- Departments table
create table Departments(
department_id int primary key auto_increment,
name varchar(100) not null,
description text
);

-- Associating Doctors table with Departments table
alter table Doctors
add department_id int,
add foreign key (department_id) references Departments(department_id);

-- Feedback table
create table Feedback(
feedback_id int primary key auto_increment,
appointment_id int not null,
rating int check(rating between 1 and 5),
comments text,
feedback_date date not null,
foreign key(appointment_id) references Appointments(appointment_id)
);