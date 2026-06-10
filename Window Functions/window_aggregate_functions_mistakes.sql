-- ============================================
-- 📌 SQL MISTAKES FILE (WINDOW AGGREGATE FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
department VARCHAR(50),
salary DECIMAL(10,2)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Using GROUP BY instead of Window Function
SELECT
department,
SUM(salary)
FROM Employees
GROUP BY department;

-- ✅ Correct
SELECT
department,
salary,
SUM(salary) OVER(PARTITION BY department)
FROM Employees;

--------------------------------------------------

-- Mistake 2
-- ❌ Missing OVER() clause
SELECT
department,
SUM(salary)
FROM Employees;

-- ✅ Correct
SELECT
department,
salary,
SUM(salary) OVER(PARTITION BY department)
FROM Employees;

--------------------------------------------------

-- Mistake 3
-- ❌ Missing PARTITION BY
SELECT
department,
salary,
SUM(salary) OVER()
FROM Employees;

-- ✅ Correct
SELECT
department,
salary,
SUM(salary) OVER(PARTITION BY department)
FROM Employees;

--------------------------------------------------

-- Mistake 4
-- ❌ Wrong partition column
SELECT
department,
salary,
AVG(salary) OVER(PARTITION BY emp_id)
FROM Employees;

-- ✅ Correct
SELECT
department,
salary,
AVG(salary) OVER(PARTITION BY department)
FROM Employees;

--------------------------------------------------

-- Mistake 5
-- ❌ Using aggregate with GROUP BY when row-level output is needed
SELECT
customer_id,
COUNT(order_id)
FROM Orders
GROUP BY customer_id;

-- ✅ Correct
SELECT
customer_id,
COUNT(order_id) OVER(PARTITION BY customer_id)
FROM Orders;

--------------------------------------------------

-- Mistake 6
-- ❌ Incorrect MIN() aggregation
SELECT
category,
MIN(price)
FROM Products
GROUP BY category;

-- ✅ Correct
SELECT
category,
price,
MIN(price) OVER(PARTITION BY category)
FROM Products;

--------------------------------------------------

-- Mistake 7
-- ❌ Incorrect MAX() aggregation
SELECT
city,
MAX(amount)
FROM Orders
GROUP BY city;

-- ✅ Correct
SELECT
city,
amount,
MAX(amount) OVER(PARTITION BY city)
FROM Orders;

--------------------------------------------------

-- Mistake 8
-- ❌ Missing column displayed with window aggregate
SELECT
SUM(revenue) OVER(PARTITION BY category)
FROM Sales;

-- ✅ Correct
SELECT
category,
revenue,
SUM(revenue) OVER(PARTITION BY category)
FROM Sales;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. OVER() clause usage
-- 2. PARTITION BY usage
-- 3. Window vs GROUP BY
-- 4. Row-level aggregations
-- 5. SUM() OVER()
-- 6. AVG() OVER()
-- 7. COUNT() OVER()
-- 8. MIN() OVER()
-- 9. MAX() OVER()

-- ============================================
-- END OF FILE
-- ============================================
