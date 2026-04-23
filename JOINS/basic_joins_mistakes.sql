-- ============================================
-- 📌 SQL MISTAKES FILE (JOINS)
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
-- ❌ Using SELECT *
SELECT *
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- ✅ Correct
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------

-- Mistake 2
-- ❌ Missing alias
SELECT e.name
FROM employees e
INNER JOIN departments
ON e.dept_id = d.dept_id;

-- ✅ Correct
INNER JOIN departments d

--------------------------------------------------

-- Mistake 3
-- ❌ Wrong column in WHERE
WHERE d.dept_id = 'IT';

-- ✅ Correct
WHERE d.dept_name = 'IT';

--------------------------------------------------

-- Mistake 4
-- ❌ LEFT JOIN behaving like INNER JOIN unintentionally
SELECT *
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- ✅ Correct (if LEFT behavior needed)
-- Move condition into JOIN or allow NULL

--------------------------------------------------

-- Mistake 5
-- ❌ Wrong NULL check side
WHERE d.dept_id IS NULL;  -- when checking employees without dept

-- ✅ Correct
WHERE d.dept_id IS NULL (LEFT JOIN)
-- OR
WHERE e.dept_id IS NULL (for departments without employees)

--------------------------------------------------

-- Mistake 6
-- ❌ Using wrong column for NULL check
WHERE e.name IS NULL OR d.dept_name IS NULL;

-- ✅ Correct
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

--------------------------------------------------

-- Mistake 7
-- ❌ Forgetting comma in SELECT
SELECT d.dept_name
e.name

-- ✅ Correct
SELECT d.dept_name, e.name

--------------------------------------------------

-- Mistake 8
-- ❌ Invalid alias in aggregation
COUNT(e.emp_id) AS e.total_emps

-- ✅ Correct
COUNT(e.emp_id) AS total_emps

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct JOIN type selection
-- 2. Proper alias usage
-- 3. Correct NULL handling logic
-- 4. Avoid unintended INNER JOIN behavior
-- 5. Use correct columns in conditions
-- 6. Syntax accuracy (commas, aliases)

-- ============================================
-- END OF FILE
-- ============================================
