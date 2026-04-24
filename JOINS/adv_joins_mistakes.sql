-- ============================================
-- 📌 SQL MISTAKES FILE (FULL ANTI JOIN, CROSS JOIN, MULTIPLE JOINS)
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

-- 🗂️ TABLE: Locations

CREATE TABLE Locations (
dept_id INT,
city VARCHAR(50)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Wrong NULL-side in FULL ANTI JOIN
WHERE e.dept_id IS NULL;

-- ✅ Correct
WHERE d.dept_id IS NULL;

--------------------------------------------------

-- Mistake 2
-- ❌ Using wrong columns for NULL check
WHERE e.name IS NULL OR d.dept_name IS NULL;

-- ✅ Correct
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

--------------------------------------------------

-- Mistake 3
-- ❌ Incorrect COALESCE usage
e.name AS COALESCE('Null', 'No Employee');

-- ✅ Correct
COALESCE(e.name, 'No Employee') AS name;

--------------------------------------------------

-- Mistake 4
-- ❌ Missing JOIN condition
SELECT *
FROM employees
FULL JOIN departments;

-- ✅ Correct
ON employees.dept_id = departments.dept_id;

--------------------------------------------------

-- Mistake 5
-- ❌ Wrong JOIN order with WHERE
FROM employees e
LEFT JOIN departments d
WHERE d.dept_id IS NULL
INNER JOIN locations l;

-- ✅ Correct
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
INNER JOIN locations l
ON e.dept_id = l.dept_id;

--------------------------------------------------

-- Mistake 6
-- ❌ Using INNER JOIN instead of CROSS JOIN
SELECT *
FROM employees e
INNER JOIN departments d;

-- ✅ Correct
SELECT *
FROM employees
CROSS JOIN departments;

--------------------------------------------------

-- Mistake 7
-- ❌ Pattern matching without LIKE
WHERE name = A%;

-- ✅ Correct
WHERE name LIKE 'A%';

--------------------------------------------------

-- Mistake 8
-- ❌ Wrong join columns in multiple joins
ON e.dept_name = d.dept_name;

-- ✅ Correct
ON e.dept_id = d.dept_id;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct NULL filtering logic
-- 2. Proper JOIN conditions
-- 3. Correct JOIN type selection
-- 4. Syntax accuracy (COALESCE, LIKE)
-- 5. Managing multiple joins correctly

-- ============================================
-- END OF FILE
-- ============================================
