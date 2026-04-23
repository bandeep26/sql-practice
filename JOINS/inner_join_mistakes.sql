-- ============================================
-- 📌 SQL MISTAKES FILE (INNER JOIN)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
salary DECIMAL(10,2)
);

-- 🗂️ TABLE: Departments

CREATE TABLE Departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Using SELECT * instead of required columns
SELECT *
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

-- ✅ Correct
SELECT e.name, d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------

-- Mistake 2
-- ❌ Using alias without defining it
SELECT e.name
FROM Employees e
INNER JOIN Departments
ON e.dept_id = d.dept_id;

-- ✅ Correct
SELECT e.name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------

-- Mistake 3
-- ❌ Using wrong column in WHERE clause
SELECT e.name, e.salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id = 'IT';

-- ✅ Correct
SELECT e.name, e.salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

--------------------------------------------------

-- Mistake 4
-- ❌ Wrong condition logic (reversed)
SELECT e.name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary < 55000;

-- ✅ Correct
SELECT e.name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary >= 55000;

--------------------------------------------------

-- Mistake 5
-- ❌ Invalid alias usage in aggregation
SELECT d.dept_name, COUNT(e.emp_id) AS e.total_emps
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- ✅ Correct
SELECT d.dept_name, COUNT(e.emp_id) AS total_emps
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

--------------------------------------------------

-- Mistake 6
-- ❌ Typo in column name
SELECT d.dept_name, COUNT(e.emp_id)
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept name;

-- ✅ Correct
SELECT d.dept_name, COUNT(e.emp_id)
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Selecting only required columns (avoid SELECT *)
-- 2. Proper alias usage in JOINs
-- 3. Correct column selection in the WHERE clause
-- 4. Logical condition accuracy
-- 5. Valid alias naming in aggregation
-- 6. Avoiding typos in column names

-- ============================================
-- END OF FILE
-- ============================================
