-- ============================================
-- 🔗 FULL ANTI JOIN, CROSS JOIN, MULTIPLE JOINS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, name, dept_id, salary

-- 🗂️ TABLE: Departments
-- Columns:
-- dept_id, dept_name

-- 🗂️ TABLE: Locations
-- Columns:
-- dept_id, city

-- ============================================
-- 1. Retrieve all non-matching rows from Employees and Departments.
SELECT *
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 2. Get employee and department names from non-matching rows.
SELECT
e.name,
d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 3. Generate all combinations of employees and departments.
SELECT *
FROM employees
CROSS JOIN departments;

-- ============================================
-- 4. Get employee names and department names using CROSS JOIN.
SELECT
e.name,
d.dept_name
FROM employees e
CROSS JOIN departments d;

-- ============================================
-- 5. Get combinations where employee name starts with 'A'.
SELECT *
FROM employees
CROSS JOIN departments
WHERE name LIKE 'A%';

-- ============================================
-- 6. Retrieve employee, department, and city using multiple joins.
SELECT
e.name,
d.dept_name,
l.city
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
INNER JOIN locations l
ON e.dept_id = l.dept_id;

-- ============================================
-- 7. Get all employees with department and city including unmatched.
SELECT
e.name,
d.dept_name,
l.city
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN locations l
ON e.dept_id = l.dept_id;

-- ============================================
-- 8. Get employees where department and location both exist.
SELECT
e.name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
INNER JOIN locations l
ON e.dept_id = l.dept_id;

-- ============================================
-- 9. Get employees with department but no location.
SELECT
e.name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN locations l
ON e.dept_id = l.dept_id
WHERE l.dept_id IS NULL;

-- ============================================
-- 10. Get employees with no department but with location.
SELECT
e.name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
INNER JOIN locations l
ON e.dept_id = l.dept_id
WHERE d.dept_id IS NULL;

-- ============================================
-- 11. Replace NULL values in FULL ANTI JOIN results.
SELECT
COALESCE(e.name, 'No Employee') AS name,
COALESCE(d.dept_name, 'No Department') AS dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 12. Count total combinations using CROSS JOIN.
SELECT
COUNT(*) AS total_combinations
FROM employees
CROSS JOIN departments;

-- ============================================
-- 13. Get employee-department combinations where salary > 50000.
SELECT
e.name,
d.dept_name
FROM employees e
CROSS JOIN departments d
WHERE e.salary > 50000;

-- ============================================
-- 14. Get department names without employees using FULL JOIN.
SELECT
d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL;

-- ============================================
-- 15. Get employee names without departments using FULL JOIN.
SELECT
e.name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- ============================================
-- END OF FILE
-- ============================================
