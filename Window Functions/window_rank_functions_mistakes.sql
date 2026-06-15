-- ============================================
-- 📌 SQL MISTAKES FILE (WINDOW RANK FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary DECIMAL(10,2)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Missing OVER() clause
SELECT
employee_name,
salary,
ROW_NUMBER()
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC)
FROM Employees;

--------------------------------------------------

-- Mistake 2
-- ❌ Missing ORDER BY
SELECT
employee_name,
salary,
RANK() OVER()
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary,
RANK() OVER(ORDER BY salary DESC)
FROM Employees;

--------------------------------------------------

-- Mistake 3
-- ❌ Wrong partition column
SELECT
category,
price,
DENSE_RANK() OVER(PARTITION BY product_id ORDER BY price DESC)
FROM Products;

-- ✅ Correct
SELECT
category,
price,
DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC)
FROM Products;

--------------------------------------------------

-- Mistake 4
-- ❌ Using GROUP BY with ranking function
SELECT
department,
RANK() OVER(ORDER BY salary DESC)
FROM Employees
GROUP BY department;

-- ✅ Correct
SELECT
employee_name,
salary,
RANK() OVER(ORDER BY salary DESC)
FROM Employees;

--------------------------------------------------

-- Mistake 5
-- ❌ Incorrect NTILE() syntax
SELECT
employee_name,
salary,
NTILE OVER(ORDER BY salary DESC)
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary,
NTILE(3) OVER(ORDER BY salary DESC)
FROM Employees;

--------------------------------------------------

-- Mistake 6
-- ❌ Missing ORDER BY in PERCENT_RANK()
SELECT
employee_name,
salary,
PERCENT_RANK() OVER()
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary,
PERCENT_RANK() OVER(ORDER BY salary)
FROM Employees;

--------------------------------------------------

-- Mistake 7
-- ❌ Missing ORDER BY in CUME_DIST()
SELECT
employee_name,
salary,
CUME_DIST() OVER()
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary,
CUME_DIST() OVER(ORDER BY salary)
FROM Employees;

--------------------------------------------------

-- Mistake 8
-- ❌ Using aggregate function instead of rank function
SELECT
salary,
MAX(salary) OVER()
FROM Employees;

-- ✅ Correct
SELECT
employee_name,
salary,
RANK() OVER(ORDER BY salary DESC)
FROM Employees;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. OVER() clause usage
-- 2. ORDER BY requirement
-- 3. PARTITION BY usage
-- 4. ROW_NUMBER()
-- 5. RANK()
-- 6. DENSE_RANK()
-- 7. NTILE()
-- 8. PERCENT_RANK()
-- 9. CUME_DIST()

-- ============================================
-- END OF FILE
-- ============================================
