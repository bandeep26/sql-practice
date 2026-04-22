-- ============================================
-- ?? SQL MISTAKES FILE (DDL)
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
-- ? COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ? Using MODIFY instead of ALTER COLUMN (MySQL habit)
ALTER TABLE Employees
MODIFY salary DECIMAL(12,2);

-- ? Correct (SQL Server)
ALTER TABLE Employees
ALTER COLUMN salary DECIMAL(12,2);

--------------------------------------------------

-- Mistake 2
-- ? Forgetting to name constraints (cannot drop later easily)
ALTER TABLE Employees
ADD CHECK (salary <= 200000);

-- ? Correct
ALTER TABLE Employees
ADD CONSTRAINT chk_salary_max CHECK (salary <= 200000);

--------------------------------------------------

-- Mistake 3
-- ? Wrong syntax for dropping table conditionally
DROP TABLE Employees IF EXISTS;

-- ? Correct
DROP TABLE IF EXISTS Employees;

--------------------------------------------------

-- Mistake 4
-- ? Trying to rename column using ALTER TABLE (not valid in SQL Server)
ALTER TABLE Employees
RENAME COLUMN name TO full_name;

-- ? Correct
EXEC sp_rename 'Employees.name', 'full_name', 'COLUMN';

--------------------------------------------------

-- Mistake 5
-- ? Adding UNIQUE incorrectly without specifying column
ALTER TABLE Employees
ADD UNIQUE;

-- ? Correct
ALTER TABLE Employees
ADD CONSTRAINT uq_email UNIQUE (email);

--------------------------------------------------

-- Mistake 6
-- ? Using DELETE instead of TRUNCATE for full table clear (performance issue)
DELETE FROM Employees;

-- ? Better (when no conditions needed)
TRUNCATE TABLE Employees;

--------------------------------------------------

-- Mistake 7
-- ? Forgetting column when adding FOREIGN KEY
ALTER TABLE Employees
ADD CONSTRAINT fk_dept
FOREIGN KEY REFERENCES Departments(dept_id);

-- ? Correct
ALTER TABLE Employees
ADD dept_id INT;

ALTER TABLE Employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (dept_id)
REFERENCES Departments(dept_id);

--------------------------------------------------

-- Mistake 8
-- ? CHECK constraint without condition
ALTER TABLE Employees
ADD CONSTRAINT chk_salary CHECK;

-- ? Correct
ALTER TABLE Employees
ADD CONSTRAINT chk_salary CHECK (salary >= 0);

--------------------------------------------------

-- Mistake 9
-- ? Dropping constraint without knowing its name
ALTER TABLE Employees
DROP CHECK salary;

-- ? Correct
ALTER TABLE Employees
DROP CONSTRAINT chk_salary;

--------------------------------------------------

-- Mistake 10
-- ? Assuming TRUNCATE works with FOREIGN KEY constraints
TRUNCATE TABLE Employees;

-- ?? Issue:
-- Will fail if table is referenced by a FOREIGN KEY

-- ? Solution:
-- Use DELETE or remove FK first

--------------------------------------------------

-- ============================================
-- ?? SUMMARY
-- ============================================

-- Focus Areas:
-- 1. SQL Server-specific syntax (ALTER COLUMN, sp_rename)
-- 2. Always name constraints
-- 3. Understand difference: DELETE vs TRUNCATE
-- 4. Proper FOREIGN KEY creation
-- 5. Correct DROP syntax

-- ============================================
-- END OF FILE
-- ============================================