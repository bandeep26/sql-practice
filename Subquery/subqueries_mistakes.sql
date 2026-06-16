-- ============================================
-- 📌 SQL MISTAKES FILE (SUBQUERIES)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary DECIMAL(10,2),
department_id INT
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Missing alias for subquery
SELECT
*
FROM
(
    SELECT
    customer_id,
    SUM(amount)
    FROM Orders
    GROUP BY customer_id
);

-- ✅ Correct
SELECT
*
FROM
(
    SELECT
    customer_id,
    SUM(amount) AS total_amount
    FROM Orders
    GROUP BY customer_id
) t;

--------------------------------------------------

-- Mistake 2
-- ❌ Returning multiple columns in scalar subquery
SELECT
employee_name,
(
    SELECT employee_name, salary
    FROM Employees
)
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
(
    SELECT AVG(salary)
    FROM Employees
)
FROM Employees;

--------------------------------------------------

-- Mistake 3
-- ❌ Missing parentheses around subquery
SELECT
employee_name,
salary
FROM Employees
WHERE salary >
SELECT AVG(salary)
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary
FROM Employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
);

--------------------------------------------------

-- Mistake 4
-- ❌ Joining without alias reference
SELECT
employee_name,
department_name
FROM Employees
JOIN
(
    SELECT
    department_id,
    department_name
    FROM Departments
)
ON department_id = department_id;

-- ✅ Correct
SELECT
e.employee_name,
d.department_name
FROM Employees AS e
JOIN
(
    SELECT
    department_id,
    department_name
    FROM Departments
) AS d
ON e.department_id = d.department_id;

--------------------------------------------------

-- Mistake 5
-- ❌ Aggregate without GROUP BY in derived table
SELECT
*
FROM
(
    SELECT
    customer_id,
    SUM(amount) AS total_amount
    FROM Orders
) t;

-- ✅ Correct
SELECT
*
FROM
(
    SELECT
    customer_id,
    SUM(amount) AS total_amount
    FROM Orders
    GROUP BY customer_id
) t;

--------------------------------------------------

-- Mistake 6
-- ❌ Using aggregate directly instead of subquery
SELECT
employee_name,
AVG(salary)
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
(
    SELECT AVG(salary)
    FROM Employees
) AS company_avg_salary
FROM Employees;

--------------------------------------------------

-- Mistake 7
-- ❌ Using incorrect comparison operator
SELECT
product_name,
price
FROM Products
WHERE price >
(
    SELECT MAX(price)
    FROM Products
);

-- ✅ Correct
SELECT
product_name,
price
FROM Products
WHERE price =
(
    SELECT MAX(price)
    FROM Products
);

--------------------------------------------------

-- Mistake 8
-- ❌ Missing aggregation in JOIN subquery
SELECT
c.customer_name,
o.amount
FROM Customers c
JOIN
(
    SELECT
    customer_id,
    amount
    FROM Orders
) o
ON c.customer_id = o.customer_id;

-- ✅ Correct
SELECT
c.customer_name,
o.total_amount
FROM Customers c
JOIN
(
    SELECT
    customer_id,
    SUM(amount) AS total_amount
    FROM Orders
    GROUP BY customer_id
) o
ON c.customer_id = o.customer_id;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Scalar Subqueries
-- 2. Derived Tables
-- 3. WHERE Subqueries
-- 4. JOIN Subqueries
-- 5. Subquery Aliases
-- 6. Aggregate Functions
-- 7. GROUP BY Usage
-- 8. Parentheses Placement

-- ============================================
-- END OF FILE
-- ============================================
