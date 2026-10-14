create database employeeplayroll;
use employeeplayroll;


create table employees (
employee_id int primary key,
employee_name varchar(100) not null,
department varchar(100) not null,
designation varchar(100) not null,
basic_salary decimal(10,2) not null,
joining_date date not null,
status varchar(100),
constraint chck_employee_salary check (basic_salary >=0),
constraint chck_employee_status check (status in ('active','inactive')));

-- drop table employees;

insert into employees
(employee_id, employee_name, department, designation, basic_salary, joining_date, status)
values
(101, 'Sakshi Gadiwaddar', 'IT', 'SQL Developer', 50000, '2023-11-05', 'active'),
(102, 'Rushikesh Patil', 'IT', 'Data Analyst', 40000, '2025-12-02', 'active'),
(103, 'Pranav Chavan', 'IT', 'Power BI Developer', 35000, '2026-05-14', 'active'),
(104, 'Mayur Reddy', 'HR', 'HR Executive', 70000, '2025-06-16', 'active'),
(105, 'Sanika Shinde', 'IT', 'Customer Support', 25000, '2026-11-07', 'active'),
(106, 'Shweta Kandekar', 'Finance', 'Accountant', 20000, '2025-10-09', 'active'),
(107, 'Amisha Shinde', 'Finance', 'Finance Manager', 20000, '2026-09-12', 'active'),
(108, 'Ram Patil', 'IT', 'Data Analyst', 60000, '2025-06-23', 'active'),
(109, 'Vishal Gadiwaddar', 'IT', 'Software Engineer', 36000, '2025-12-24', 'active'),
(110, 'Shruti Waddar', 'Sales', 'Sales Manager', 19000, '2023-08-21', 'inactive');

select*from employees;

 


 
