-- ============================================
-- 📌 SQL MISTAKES FILE (FULL ANTI JOIN, CROSS JOIN)
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
-- ❌ Wrong NULL side in FULL ANTI JOIN
WHERE e.dept_id IS NULL;

-- ✅ Correct
WHERE d.dept_id IS NULL;

--------------------------------------------------

-- Mistake 2
-- ❌ Using wrong column for NULL check
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
-- ❌ Using 'Null' instead of NULL
COALESCE('Null', 'No Employee');

-- ✅ Correct
COALESCE(e.name, 'No Employee');

--------------------------------------------------

-- Mistake 5
-- ❌ Missing JOIN condition in FULL JOIN
SELECT *
FROM employees
FULL JOIN departments;

-- ✅ Correct
ON employees.dept_id = departments.dept_id;

--------------------------------------------------

-- Mistake 6
-- ❌ Confusing CROSS JOIN with INNER JOIN
SELECT *
FROM employees e
INNER JOIN departments d;

-- ✅ Correct
SELECT *
FROM employees
CROSS JOIN departments;

--------------------------------------------------

-- Mistake 7
-- ❌ Using = instead of LIKE for patterns
WHERE name = A%;

-- ✅ Correct
WHERE name LIKE 'A%';

--------------------------------------------------

-- Mistake 8
-- ❌ Missing quotes in pattern
WHERE name LIKE A%;

-- ✅ Correct
WHERE name LIKE 'A%';

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct NULL-side logic in FULL ANTI JOIN
-- 2. Proper use of COALESCE
-- 3. Correct JOIN syntax
-- 4. Understanding CROSS JOIN behavior
-- 5. Pattern matching syntax

-- ============================================
-- END OF FILE
-- ============================================
