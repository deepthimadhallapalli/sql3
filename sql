-- exercise 1
create database consultationandtheraphy;
create table  doctor(id int primary key,name varchar(30),specialization varchar(20) not null,gender varchar(10) not null);
select * from doctor;
create table appointments(appointmentid int primary key not null,appointmenttime time not null,userid int,doctorid int not null,date date,reason varchar(50));
select * from appointments;
create table patient(name varchar(50),id int primary key,village varchar(40),disease varchar(50),dateofconsultation date);
select *from patient;
create table reviews(doctor_id int primary key,doctor_name varchar(30) not null,interaction_with_doctor varchar(20),rating int);
select * from reviews;
-- exercise2
create database question2;
create table contact(id int primary key,email varchar(60),fname varchar(30),lname varchar(40),company varchar(30),active_flag int,opt_out int);
INSERT INTO contact VALUES(123,"a@a.com","kian","seth","ABC",1,1);
insert INTO contact VALUES(133,"b@a.com","neha","seth","ABC",1,1);
INSERT INTO contact VALUES(234,"c@a.com","puru","malik","CDF",0,0);
INSERT INTO contact VALUES(342,"d@a.com","kian","seth","TEG",1,0);
select * from contact;
select * from contact where active_flag =1;-- to select where active_ flag is 1
delete from contact where opt_out=1;-- to deactivate who are opt_out
delete from contact where company="ABC";-- to delete column with company ABC
insert into contact values(658,"mili@gmail.com","mili","","DGH",1,1);
select distinct company from contact;
update contact set fname="niti" where fname="mili";
-- exercise3
create database question3;
create table customer (cus_id int,c_name varchar(30),city varchar(30),grade int,salesman_id int);
insert into customer values(3002, 'nick rimando','new york',100,5001),
(3007,'brad davis','new york',200,5001),(3005,'graham zusi','california',200,5002),
(3008,'julian green','london',300,5002),(3004,'fabian jhonson','paris',300,5006),(3009,'geoff cameron','berlin',100,5003),
(3003,'jozy altidor','moscow',200,5007),(3001,'brad gujan','london',null ,5005);
create table salesman1(salesman_id int,name varchar(20),city varchar(30),commission float);
insert into salesman1 values(5001,'james hoog','new york',0.15),(5002,'nail knite','paris',0.13),(5005,'pit alex','london',0.11),(5006,'mc lyon','paris',0.14),(5007,'paul adam','rome',0.13),(5003,'louson hen','san jose',0.12);
select customer.c_name,customer.city,customer.grade,salesman1.salesman_id,salesman1.city from customer join salesman1 on customer.salesman_id=salesman1.salesman_id where customer.grade<100 order by customer.cus_id;

