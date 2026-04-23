-- ============================================
-- 🔗 INNER JOIN PRACTICE (QUESTIONS + ANSWERS)
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
-- 2. Show employee name and salary for employees in the 'IT' department.
SELECT 
e.name,
e.salary
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- ============================================
-- 3. Get employee name and department name where salary is greater than 55000.
SELECT 
e.name,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 55000;

-- ============================================
-- 4. Display department names along with the count of employees in each department.
SELECT 
d.dept_name,
COUNT(e.emp_id) AS total_emps
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- ============================================
-- 5. Retrieve employee names who belong to valid departments and have salary >= 55000.
SELECT 
e.name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary >= 55000;

-- ============================================
-- END OF FILE
-- ============================================
