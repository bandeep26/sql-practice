-- ============================================
-- ?? SQL PRACTICE QUESTIONS (DDL)
-- ============================================

-- ??? TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50)
);

-- ============================================
-- ?? PRACTICE QUESTIONS
-- ============================================

-- Question 1
-- Create the Employees table with emp_id as PRIMARY KEY.

-- Question 2
-- Create the Employees table with NOT NULL constraint on name and department.

-- Question 3
-- Create the Employees table with a CHECK constraint to ensure salary >= 0.

-- Question 4
-- Create the Employees table and add an email column with UNIQUE constraint.

-- Question 5
-- Create the Employees table with DEFAULT value 'Unknown' for city.

-- Question 6
-- Add a new column email (VARCHAR(100)) with UNIQUE constraint to Employees.

-- Question 7
-- Modify the salary column to DECIMAL(12,2).

-- Question 8
-- Add a CHECK constraint to ensure salary <= 200000.

-- Question 9
-- Drop the city column from Employees table.

-- Question 10
-- Rename the column name to full_name.

-- Question 11
-- Drop the CHECK constraint applied on salary.

-- Question 12
-- Drop the Employees table.

-- Question 13
-- Drop the Employees table only if it exists.

-- Question 14
-- Remove all records from Employees without deleting table structure.

-- Question 15
-- Create a Departments table and add a FOREIGN KEY in Employees referencing it.

-- ============================================
-- ?? SUMMARY
-- ============================================

-- Total Questions Practiced: 15

-- Topics Covered:
-- CREATE
-- ALTER (ADD, MODIFY, DROP COLUMN)
-- DROP
-- TRUNCATE
-- CONSTRAINTS (PRIMARY KEY, UNIQUE, CHECK, DEFAULT, FOREIGN KEY)

-- Key Learnings:
-- 1. DDL commands define and modify structure
-- 2. Constraints ensure data integrity
-- 3. ALTER is used for modifying existing tables
-- 4. DROP removes entire objects
-- 5. TRUNCATE removes data efficiently without affecting structure

-- ============================================
-- END OF QUESTIONS
-- ============================================