create database Payroll_Service;
use Payroll_Service;

create table employee_Payroll
(
	ID int identity (1,1) primary key,
	Name varchar (20) NOT NULL,
	salary int,
	StartDate Date
);

Insert into employee_Payroll values('Rohan', 3000, '2021-10-03')
Insert into employee_Payroll values('Hades', 2500, '2022-02-22')
Insert into employee_Payroll values('Athena', 4000, '2021-12-10')
Insert into employee_Payroll values('Zeus', 2700, '2022-01-15')

select * from employee_Payroll