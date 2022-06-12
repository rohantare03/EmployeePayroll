create database Payroll_Service;
use Payroll_Service;

create table employee_Payroll
(
	ID int identity (1,1) primary key,
	Name varchar (20) NOT NULL,
	salary int,
	StartDate Date
);