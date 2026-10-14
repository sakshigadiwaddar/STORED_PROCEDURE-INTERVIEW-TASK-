use employeeplayroll;

delimiter //

create Procedure  GetEmployeeSalaryReport(
in p_department_name varchar(100),
in p_minimum_salary decimal(10,2)
)
begin
select employee_id,employee_name,department,designation, basic_salary, joining_date from employees
where department = p_department_name and basic_salary >= p_minimum_salary 
and status ="active";
end//
DELIMITER ;

call GetEmployeeSalaryReport("IT",50000);

## Task 2 – Employee Salary Calculation Procedure

DELIMITER //

create procedure CalculateEmployeeSalary(
in p_employee_id int )
begin
select employee_name 
basic_salary,
basic_salary*0.20 as HRS,
basic_salary*0.10 as DA,
basic_salary*0.12 as PF,
basic_salary + (basic_salary*0.20) + (basic_salary*0.10) - (basic_salary*0.12) as net_salary
from employees 
where employee_id = p_employee_id ;
end//
DELIMITER ;

call CalculateEmployeeSalary(101);


##Task 3 – Salary Grade Procedure

delimiter  //
create procedure EmployeeSalaryGrade(
in p_employee_id int )
begin 
select 
employee_name,
        basic_salary,
        case
            when basic_salary < 30000 then 'C'
            when basic_salary <= 60000 then 'B'
            else 'A'
        end as salary_grade
    from employees
    where employee_id = p_employee_id;
    end //
    delimiter ;
    
call EmployeeSalaryGrade(101);
call  EmployeeSalaryGrade(102);
call  EmployeeSalaryGrade(107);



## 4. Bonus Task – Department Summary

delimiter //
create procedure  GetDepartmentSummary(
in p_department_name varchar(100) )
begin 
if not exists (select 1 from  employees
        WHERE department = p_department_name
    ) then
        select
            concat('Department not found: ',
                p_department_name) as message;
    else 
        select
            department,
            count(*) as total_employees,
            round(avg(basic_salary), 2) as average_salary,
            max(basic_salary) as highest_salary,
            min(basic_salary) as lowest_salary,
            sum(basic_salary) as total_salary_expenditure
        from  employees
        where department = p_department_name
        group by department;
    end if ;
end //
delimiter ;

call GetDepartmentSummary('IT');

