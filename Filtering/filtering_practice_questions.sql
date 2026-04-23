-- ============================================
-- 📌 SQL PRACTICE QUESTIONS + ANSWERS (FILTERING)
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
-- Salary > 40000
SELECT * FROM Employees
WHERE salary > 40000;

-- Question 2
-- Department = IT
SELECT * FROM Employees
WHERE department = 'IT';

-- Question 3
-- IT AND Mumbai
SELECT * FROM Employees
WHERE department = 'IT' AND city = 'Mumbai';

-- Question 4
-- IT OR HR
SELECT * FROM Employees
WHERE department = 'IT' OR department = 'HR';

-- Question 5
-- NOT HR
SELECT * FROM Employees
WHERE NOT department = 'HR';

-- Question 6
-- Salary range
SELECT * FROM Employees
WHERE salary BETWEEN 30000 AND 60000;

-- Question 7
-- Multiple departments
SELECT * FROM Employees
WHERE department IN ('IT', 'HR', 'Finance');

-- Question 8
-- Starts with A
SELECT * FROM Employees
WHERE name LIKE 'A%';

-- Question 9
-- Ends with a
SELECT * FROM Employees
WHERE name LIKE '%a';

-- Question 10
-- Contains 'ar'
SELECT * FROM Employees
WHERE name LIKE '%ar%';

-- Question 11
-- NULL city
SELECT * FROM Employees
WHERE city IS NULL;

-- Question 12
-- NOT NULL city
SELECT * FROM Employees
WHERE city IS NOT NULL;

-- Question 13
-- Sorted result
SELECT * FROM Employees
WHERE salary > 40000
ORDER BY salary DESC;

-- ============================================
-- END OF FILE
-- ============================================
