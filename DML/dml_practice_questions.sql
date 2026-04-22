-- ============================================
-- ?? SQL PRACTICE QUESTIONS + ANSWERS (DML)
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
-- ?? QUESTIONS + ANSWERS
-- ============================================

-- Question 1
-- Insert a single record into Employees.
INSERT INTO Employees VALUES (1, 'John', 'HR', 50000, 'Delhi');

-- Question 2
-- Insert multiple records into Employees.
INSERT INTO Employees VALUES
(2, 'Alice', 'IT', 60000, 'Mumbai'),
(3, 'Bob', 'Finance', 45000, 'Pune');

-- Question 3
-- Insert data into specific columns only.
INSERT INTO Employees (emp_id, name, department)
VALUES (4, 'Eve', 'IT');

-- Question 4
-- Retrieve all records from Employees.
SELECT * FROM Employees;

-- Question 5
-- Retrieve only name and salary columns.
SELECT name, salary FROM Employees;

-- Question 6
-- Retrieve employees with salary greater than 40000.
SELECT * FROM Employees
WHERE salary > 40000;

-- Question 7
-- Retrieve employees from IT department AND city 'Mumbai'.
SELECT * FROM Employees
WHERE department = 'IT' AND city = 'Mumbai';

-- Question 8
-- Retrieve employees whose name starts with 'A'.
SELECT * FROM Employees
WHERE name LIKE 'A%';

-- Question 9
-- Retrieve employees with salary between 30000 and 60000.
SELECT * FROM Employees
WHERE salary BETWEEN 30000 AND 60000;

-- Question 10
-- Update salary of employee with emp_id = 1.
UPDATE Employees
SET salary = 70000
WHERE emp_id = 1;

-- Question 11
-- Update department and city of a specific employee.
UPDATE Employees
SET department = 'Marketing', city = 'Bangalore'
WHERE emp_id = 2;

-- Question 12
-- Delete a specific employee using emp_id.
DELETE FROM Employees
WHERE emp_id = 3;

-- Question 13
-- Delete all records from Employees.
DELETE FROM Employees;

-- ============================================
-- END OF FILE
-- ============================================