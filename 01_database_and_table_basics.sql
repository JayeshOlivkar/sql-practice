-- Database
create database mydb;
show databases;
use mydb;

-- Create table
create table student(id int,name text,age int);
show tables;
desc student;

-- Insert
insert into student values(1,'Jayesh',23);
insert into student values(2,'Aditya',23);
insert into student values(3,'Atharva',23);

select * from student;

-- Multiple insert
insert into student values
(4,'Pratik',22),
(5,'Piyush',24),
(6,'Darshan',25);

select * from student;

-- Delete
delete from student where id=2;
select * from student;

-- Truncate
truncate table student;

-- Alter table
alter table student add city text;
alter table student modify city varchar(30);
alter table student rename column city to location;
alter table student drop column location;

-- Drop table
drop table student;