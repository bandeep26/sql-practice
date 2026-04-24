-- ============================================
-- 🔗 FULL ANTI JOIN, CROSS JOIN PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, name, dept_id, salary

-- 🗂️ TABLE: Departments
-- Columns:
-- dept_id, dept_name

-- ============================================
-- 1. Retrieve all non-matching rows from both tables.
SELECT *
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 2. Get employee names and department names from non-matching rows.
SELECT
e.name,
d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 3. Retrieve only employee names without matching departments.
SELECT
e.name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- ============================================
-- 4. Retrieve only department names without employees.
SELECT
d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL;

-- ============================================
-- 5. Replace NULL values in non-matching rows with labels.
SELECT
COALESCE(e.name, 'No Employee') AS name,
COALESCE(d.dept_name, 'No Department') AS dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 6. Generate all combinations of employees and departments.
SELECT *
FROM employees
CROSS JOIN departments;

-- ============================================
-- 7. Retrieve employee names and department names using CROSS JOIN.
SELECT
e.name,
d.dept_name
FROM employees e
CROSS JOIN departments d;

-- ============================================
-- 8. Get combinations only for employees whose name starts with 'A'.
SELECT *
FROM employees
CROSS JOIN departments
WHERE name LIKE 'A%';

-- ============================================
-- 9. Count total combinations using CROSS JOIN.
SELECT
COUNT(*) AS total_combinations
FROM employees
CROSS JOIN departments;

-- ============================================
-- 10. Retrieve combinations with salary > 50000.
SELECT
e.name,
d.dept_name
FROM employees e
CROSS JOIN departments d
WHERE e.salary > 50000;

-- ============================================
-- END OF FILE
-- ============================================
