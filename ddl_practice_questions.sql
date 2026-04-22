-- ============================================
-- 📌 SQL PRACTICE QUESTIONS + ANSWERS (DDL)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50)
);

-- ============================================
-- 📝 QUESTIONS + ANSWERS
-- ============================================

-- Question 1
-- Create the Employees table with emp_id as PRIMARY KEY.
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50)
);

-- Question 2
-- Create the Employees table with NOT NULL constraint on name and department.
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
department VARCHAR(50) NOT NULL,
salary DECIMAL(10,2),
city VARCHAR(50)
);

-- Question 3
-- Create the Employees table with a CHECK constraint to ensure salary >= 0.
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2) CHECK (salary >= 0),
city VARCHAR(50)
);

-- Question 4
-- Create the Employees table and add an email column with UNIQUE constraint.
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50),
email VARCHAR(100) UNIQUE
);

-- Question 5
-- Create the Employees table with DEFAULT value 'Unknown' for city.
CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50) DEFAULT 'Unknown'
);

-- Question 6
-- Add a new column email (VARCHAR(100)) with UNIQUE constraint to Employees.
ALTER TABLE Employees
ADD email VARCHAR(100) UNIQUE;

-- Question 7
-- Modify the salary column to DECIMAL(12,2).
ALTER TABLE Employees
ALTER COLUMN salary DECIMAL(12,2);

-- Question 8
-- Add a CHECK constraint to ensure salary <= 200000.
ALTER TABLE Employees
ADD CONSTRAINT chk_salary_max CHECK (salary <= 200000);

-- Question 9
-- Drop the city column from Employees table.
ALTER TABLE Employees
DROP COLUMN city;

-- Question 10
-- Rename the column name to full_name.
EXEC sp_rename 'Employees.name', 'full_name', 'COLUMN';

-- Question 11
-- Drop the CHECK constraint applied on salary.
ALTER TABLE Employees
DROP CONSTRAINT chk_salary_max;

-- Question 12
-- Drop the Employees table.
DROP TABLE Employees;

-- Question 13
-- Drop the Employees table only if it exists.
DROP TABLE IF EXISTS Employees;

-- Question 14
-- Remove all records from Employees without deleting table structure.
TRUNCATE TABLE Employees;

-- Question 15
-- Create a Departments table and add a FOREIGN KEY in Employees referencing it.

CREATE TABLE Departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

ALTER TABLE Employees
ADD dept_id INT;

ALTER TABLE Employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (dept_id)
REFERENCES Departments(dept_id);

-- ============================================
-- END OF FILE
-- ============================================