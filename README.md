# STORED_PROCEDURE-INTERVIEW-TASK-

# JForce SQL Developer Interview Task – Employee Management & Payroll Analysis

## 📌 Project Overview

This project focuses on employee management and payroll analysis using **MySQL Stored Procedures**. It was developed as part of a SQL Developer interview assignment to demonstrate practical knowledge of database programming, salary calculations, conditional logic, and data analysis using SQL.

The project involves managing employee records, generating salary reports, calculating salary components, assigning salary grades, and analyzing department-wise salary statistics using reusable stored procedures.

--- 
## 🎯 Objectives

- Develop and execute MySQL stored procedures for employee data management.
- Retrieve employee records based on department, salary, and employment status.
- Calculate employee salary components using mathematical expressions.
- Categorize employees into salary grades using conditional logic.
- Generate department-wise salary summaries using aggregate functions.
- Apply SQL programming concepts to solve practical business requirements.

--- 
## Technologies Used

- **Database:** MySQL
- **Tool:** MySQL Workbench
- **Language:** SQL

##  Database Structure

**Database Name:** `jforce`

### Employee Table

The employee table stores employee information, including:

| Column Name | Data Type | Description |
|---|---|---|
| employee_id | INT | Unique employee identifier |
| employee_name | VARCHAR(50) | Employee name |
| department | VARCHAR(50) | Department name |
| designation | VARCHAR(50) | Employee designation |
| basic_salary | DECIMAL(10,2) | Employee's basic salary |
| joining_date | DATE | Employee joining date |
| status | VARCHAR(50) | Employment status |

--- 

## Key Tasks and Features

### 1. Employee Salary Report

Created a stored procedure to retrieve employee details based on department, minimum salary, and active employment status.

**Output includes:**
- Employee ID and Name
- Department and Designation
- Basic Salary
- Joining Date
  
---

### 2. Employee Salary Calculation

Developed a stored procedure to calculate salary components for a specific employee.

**Salary Calculation Rules:**

| Component | Calculation |
|---|---|
| HRA | 20% of Basic Salary |
| DA | 10% of Basic Salary |
| PF | 12% of Basic Salary |
| Net Salary | Basic Salary + HRA + DA − PF |

**Example execution:**

```sql
CALL CalculateEmployeeSalary(1);
```
---

### 3. Employee Salary Grade

Implemented a stored procedure to classify employees into salary grades using conditional statements.

| Basic Salary | Salary Grade |
|---|---|
| Below ₹30,000 | C |
| ₹30,000–₹60,000 | B |
| Above ₹60,000 | A |

**Example execution:**

```sql
CALL EmployeeSalaryGrade(2);
```

---

### 4. Department Salary Summary

Created a stored procedure to analyze salary information for a specified department.

**Metrics calculated:**
- Total number of employees
- Average salary
- Highest salary
- Lowest salary
- Total salary expenditure

**Example execution:**

```sql
CALL GetDepartmentSummary('IT');
```
---

##  Project Files

- `database.sql` – Creates the database, employee table, and sample records.
- `procedures.sql` – Contains stored procedure definitions and example execution statements.
- `README.md` – Provides project documentation and setup instructions.
  

##  How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Clone or download this repository.
3. Open `database.sql` in MySQL Workbench.
4. Execute the script to create the database, table, and sample employee records.
5. Open `procedures.sql` and execute the stored procedure definitions.
6. Call each stored procedure with appropriate input parameters.
7. Verify the output and analyze the employee salary reports.

**Note:** If a stored procedure already exists, drop it before recreating it. Ensure that the procedure names and parameter values match those used in the `CALL` statements.

---

## SQL Concepts Practiced

- Database and Table Creation
- Primary Keys
- Stored Procedures
- Input Parameters
- SELECT Statements
- WHERE Conditions
- IF/ELSE and CASE Statements
- Aggregate Functions: COUNT, AVG, MAX, MIN, SUM
- Mathematical Calculations
- ROUND() Function
- ORDER BY and GROUP BY
- DELIMITER
- Procedure Execution using CALL

---

##  Learning Outcomes

Through this project, I strengthened my understanding of MySQL stored procedures, reusable SQL logic, salary calculations, conditional statements, and aggregate functions.

The assignment provided practical experience in translating business requirements into SQL solutions, generating employee reports, and performing department-wise payroll analysis.

---

## Author

**Sakshi Vilas Gadiwaddar**

Aspiring SQL Developer | MySQL | Stored Procedures | Database Management
