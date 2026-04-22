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
SELECT * FROM Employees
WHERE salary > 40000;

-- Question 2
SELECT * FROM Employees
WHERE department = 'IT';

-- Question 3
SELECT * FROM Employees
WHERE department = 'IT' AND city = 'Mumbai';

-- Question 4
SELECT * FROM Employees
WHERE department = 'IT' OR department = 'HR';

-- Question 5
SELECT * FROM Employees
WHERE NOT department = 'HR';

-- Question 6
SELECT * FROM Employees
WHERE salary BETWEEN 30000 AND 60000;

-- Question 7
SELECT * FROM Employees
WHERE department IN ('IT', 'HR', 'Finance');

-- Question 8
SELECT * FROM Employees
WHERE name LIKE 'A%';

-- Question 9
SELECT * FROM Employees
WHERE name LIKE '%a';

-- Question 10
SELECT * FROM Employees
WHERE name LIKE '%ar%';

-- Question 11
SELECT * FROM Employees
WHERE city IS NULL;

-- Question 12
SELECT * FROM Employees
WHERE city IS NOT NULL;

-- Question 13
SELECT * FROM Employees
WHERE salary > 40000
ORDER BY salary DESC;

-- ============================================
-- END OF FILE
-- ============================================