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
select salary from employee_Payroll where Name = 'Rohan'

Alter table employee_Payroll
Add Gender varchar(1)
update employee_Payroll set Gender = 'F' where Name = 'Athena'
update employee_Payroll set Gender = 'M' where Name = 'Rohan' or Name = 'Hades' or Name = 'Zeus'


select Sum(salary) from employee_Payroll where Gender = 'M' Group by Gender 
select Sum(salary) from employee_Payroll where Gender = 'F' Group by Gender
select Avg(salary) from employee_Payroll where Gender = 'M' Group by Gender
select Avg(salary) from employee_Payroll where Gender = 'F' Group by Gender
select Min(salary) from employee_Payroll where Gender = 'M' Group by Gender 
select Min(salary) from employee_Payroll where Gender = 'F' Group by Gender 
select Max(salary) from employee_Payroll where Gender = 'M' Group by Gender
select Max(salary) from employee_Payroll where Gender = 'F' Group by Gender
select Count(*) from employee_Payroll where Gender = 'M' Group by Gender
select Count(*) from employee_Payroll where Gender = 'F' Group by Gender

Alter table employee_Payroll
Add PhoneNumber bigint, Address varchar(100), Department varchar(30)

Update employee_Payroll set PhoneNumber = 9158499217 where Name in ('Rohan')
Update employee_Payroll set PhoneNumber = 9149923457 where Name in ('Hades')
Update employee_Payroll set PhoneNumber = 9234764337 where Name in ('Athena')
Update employee_Payroll set PhoneNumber = 9956432357 where Name in ('Zeus')
Update employee_Payroll set Address = 'Mumbai' where Name in ('Rohan')
Update employee_Payroll set Address = 'Vasai' where Name in ('Hades')
Update employee_Payroll set Address = 'Mulund' where Name in ('Athena')
Update employee_Payroll set Address = 'Dadar' where Name in ('Zeus')
Update employee_Payroll set Department = 'CEO' where Name in ('Rohan')
Update employee_Payroll set Department = 'Intern' where Name in ('Hades')
Update employee_Payroll set Department = 'Assistant' where Name in ('Athena')
Update employee_Payroll set Department = 'Associate' where Name in ('Zeus')

Alter table employee_Payroll
Add BasicPay int, Deduction int, TaxablePay int, IncomeTax int, NetPay int

