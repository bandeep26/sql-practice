-- ============================================
-- 🔗 JOINS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, name, dept_id, salary

-- 🗂️ TABLE: Departments
-- Columns:
-- dept_id, dept_name

-- ============================================
-- 1. Retrieve employee names along with their department names.
SELECT 
e.name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- ============================================
-- 2. Get employee name and salary for employees in 'IT' department.
SELECT 
e.name,
e.salary
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- ============================================
-- 3. Retrieve all employees with their department names (include unmatched).
SELECT 
e.name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- ============================================
-- 4. Get employees who do not belong to any department.
SELECT 
e.name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- ============================================
-- 5. Retrieve all departments with employee names (include empty departments).
SELECT 
d.dept_name,
e.name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- ============================================
-- 6. Get departments that do not have any employees.
SELECT 
d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.dept_id IS NULL;

-- ============================================
-- 7. Retrieve all employee and department combinations including unmatched.
SELECT 
e.name,
d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id;

-- ============================================
-- 8. Get employees without matching departments using FULL JOIN.
SELECT 
e.name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- ============================================
-- 9. Get departments without employees using FULL JOIN.
SELECT 
d.dept_name
FROM departments d
FULL JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.dept_id IS NULL;

-- ============================================
-- 10. Retrieve all non-matching rows from both tables.
SELECT 
e.name,
d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL OR d.dept_id IS NULL;

-- ============================================
-- 11. Get employee names with department names where salary > 55000.
SELECT 
e.name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 55000;

-- ============================================
-- 12. Count number of employees in each department.
SELECT 
d.dept_name,
COUNT(e.emp_id) AS total_emps
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- ============================================
-- 13. Get departments having more than 1 employee.
SELECT 
d.dept_name,
COUNT(e.emp_id) AS total_emps
FROM departments d
INNER JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 1;

-- ============================================
-- 14. Replace NULL department names with 'No Department'.
SELECT 
e.name,
COALESCE(d.dept_name, 'No Department') AS dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- ============================================
-- 15. Get total salary per department (include empty departments).
SELECT 
d.dept_name,
SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- ============================================
-- END OF FILE
-- ============================================
