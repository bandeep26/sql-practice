-- ============================================
-- ?? DQL PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- ??? TABLE: Employees
-- Columns:
-- emp_id, name, department, salary, age, city

-- ============================================
-- 1. Retrieve all columns from the Employees table.
SELECT *
FROM employees;

-- ============================================
-- 2. Show only name and salary of all employees.
SELECT name, salary
FROM employees;

-- ============================================
-- 3. Get employees whose salary is greater than 50,000.
SELECT *
FROM employees
WHERE salary > 50000;

-- ============================================
-- 4. Display employees who belong to the 'IT' department.
SELECT *
FROM employees
WHERE department = 'IT';

-- ============================================
-- 5. Show all employees sorted by salary in descending order.
SELECT *
FROM employees
ORDER BY salary DESC;

-- ============================================
-- 6. Retrieve distinct departments from the table.
SELECT DISTINCT department
FROM employees;

-- ============================================
-- 7. Show employees whose age is between 25 and 35.
SELECT *
FROM employees
WHERE age > 25 AND age < 35;
-- Better version:
-- WHERE age BETWEEN 25 AND 35;

-- ============================================
-- 8. Display top 5 highest paid employees.
SELECT TOP 5 *
FROM employees
ORDER BY salary DESC;

-- ============================================
-- 9. Get employees from 'Delhi' city AND salary > 40,000.
SELECT *
FROM employees
WHERE city = 'Delhi' AND salary > 40000;

-- ============================================
-- 10. Show all employees ordered by department ASC, salary DESC.
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;

-- ============================================
-- 11. Find the total salary of each department.
SELECT
department,
SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- ============================================
-- 12. Count the number of employees in each city.
SELECT
city,
COUNT(emp_id) AS total_employees
FROM employees
GROUP BY city;

-- ============================================
-- 13. Show departments having more than 3 employees.
SELECT
department,
COUNT(emp_id) AS tot_emp
FROM employees
GROUP BY department
HAVING COUNT(emp_id) > 3;

-- ============================================
-- 14. Find average salary of each department with avg > 60000.
SELECT
department,
AVG(salary) AS avg_sal
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- ============================================
-- 15. Display top 3 departments with highest total salary.
SELECT TOP 3
department,
SUM(salary) AS tot_sal
FROM employees
GROUP BY department
ORDER BY tot_sal DESC;

-- ============================================
-- END OF FILE
-- ============================================
