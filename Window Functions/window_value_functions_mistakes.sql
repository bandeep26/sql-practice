-- ============================================
-- 📌 SQL MISTAKES FILE (WINDOW VALUE FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
joining_date DATE,
retirement_date DATE
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Missing OVER() clause
SELECT
employee_name,
LAG(joining_date)
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
LAG(joining_date) OVER(ORDER BY joining_date)
FROM Employees;

--------------------------------------------------

-- Mistake 2
-- ❌ Missing ORDER BY
SELECT
employee_name,
LEAD(retirement_date) OVER()
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
LEAD(retirement_date) OVER(
ORDER BY retirement_date
)
FROM Employees;

--------------------------------------------------

-- Mistake 3
-- ❌ Wrong ordering column
SELECT
employee_name,
LAG(joining_date) OVER(ORDER BY emp_id)
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
LAG(joining_date) OVER(
ORDER BY joining_date
)
FROM Employees;

--------------------------------------------------

-- Mistake 4
-- ❌ Missing PARTITION BY
SELECT
customer_id,
order_date,
FIRST_VALUE(order_date) OVER(
ORDER BY order_date
)
FROM Orders;

-- ✅ Correct
SELECT
customer_id,
order_date,
FIRST_VALUE(order_date) OVER(
PARTITION BY customer_id
ORDER BY order_date
)
FROM Orders;

--------------------------------------------------

-- Mistake 5
-- ❌ LAST_VALUE() default frame trap
SELECT
sale_date,
revenue,
LAST_VALUE(revenue) OVER(
ORDER BY sale_date
)
FROM Sales;

-- ✅ Correct
SELECT
sale_date,
revenue,
LAST_VALUE(revenue) OVER(
ORDER BY sale_date
ROWS BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING
)
FROM Sales;

--------------------------------------------------

-- Mistake 6
-- ❌ Missing PARTITION BY for department analysis
SELECT
department,
salary,
LAST_VALUE(salary) OVER(
ORDER BY salary
ROWS BETWEEN CURRENT ROW
AND UNBOUNDED FOLLOWING
)
FROM Employees;

-- ✅ Correct
SELECT
department,
salary,
LAST_VALUE(salary) OVER(
PARTITION BY department
ORDER BY salary
ROWS BETWEEN CURRENT ROW
AND UNBOUNDED FOLLOWING
)
FROM Employees;

--------------------------------------------------

-- Mistake 7
-- ❌ Using aggregate instead of value function
SELECT
department,
MAX(salary)
FROM Employees
GROUP BY department;

-- ✅ Correct
SELECT
department,
employee_name,
salary,
LAST_VALUE(salary) OVER(
PARTITION BY department
ORDER BY salary
ROWS BETWEEN CURRENT ROW
AND UNBOUNDED FOLLOWING
)
FROM Employees;

--------------------------------------------------

-- Mistake 8
-- ❌ Wrong function used
SELECT
trade_date,
closing_price,
LAG(closing_price) OVER(
ORDER BY trade_date
)
FROM StockPrices;

-- ✅ Correct
SELECT
trade_date,
closing_price,
LEAD(closing_price) OVER(
ORDER BY trade_date
)
FROM StockPrices;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. OVER() clause usage
-- 2. ORDER BY requirement
-- 3. PARTITION BY usage
-- 4. LAG()
-- 5. LEAD()
-- 6. FIRST_VALUE()
-- 7. LAST_VALUE()
-- 8. Window frame handling

-- ============================================
-- END OF FILE
-- ============================================
