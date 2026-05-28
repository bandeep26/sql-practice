-- ============================================
-- 📌 SQL MISTAKES FILE (DATE & TIME FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Orders

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
delivery_date DATE,
shipping_date DATE,
amount DECIMAL(10,2)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Wrong DATEDIFF() date order
SELECT
DATEDIFF(year, resignation_date, joining_date)
FROM Employees;

-- ✅ Correct
SELECT
DATEDIFF(year, joining_date, resignation_date)
FROM Employees;

--------------------------------------------------

-- Mistake 2
-- ❌ Wrong date part in DATEDIFF()
SELECT
DATEDIFF(year, order_date, delivery_date)
FROM Orders;

-- ✅ Correct
SELECT
DATEDIFF(day, order_date, delivery_date)
FROM Orders;

--------------------------------------------------

-- Mistake 3
-- ❌ Incorrect ISDATE() usage
SELECT
*
FROM DatesData
WHERE date_value ISDATE;

-- ✅ Correct
SELECT
*
FROM DatesData
WHERE ISDATE(date_value) = 1;

--------------------------------------------------

-- Mistake 4
-- ❌ Missing GROUP BY with aggregation
SELECT
MONTH(order_date),
SUM(amount)
FROM Orders;

-- ✅ Correct
SELECT
MONTH(order_date),
SUM(amount)
FROM Orders
GROUP BY MONTH(order_date);

--------------------------------------------------

-- Mistake 5
-- ❌ Incorrect DATEADD() syntax
SELECT
DATEADD(joining_date, 30)
FROM Employees;

-- ✅ Correct
SELECT
DATEADD(day, 30, joining_date)
FROM Employees;

--------------------------------------------------

-- Mistake 6
-- ❌ Incorrect DATENAME() parameter
SELECT
DATENAME(order_date)
FROM Orders;

-- ✅ Correct
SELECT
DATENAME(month, order_date)
FROM Orders;

--------------------------------------------------

-- Mistake 7
-- ❌ Incorrect DATEPART() parameter
SELECT
DATEPART(order_date)
FROM Orders;

-- ✅ Correct
SELECT
DATEPART(week, order_date)
FROM Orders;

--------------------------------------------------

-- Mistake 8
-- ❌ Missing GROUP BY in DATETRUNC() aggregation
SELECT
DATETRUNC(month, order_date),
SUM(amount)
FROM Orders;

-- ✅ Correct
SELECT
DATETRUNC(month, order_date),
SUM(amount)
FROM Orders
GROUP BY DATETRUNC(month, order_date);

--------------------------------------------------

-- Mistake 9
-- ❌ Incorrect EOMONTH() syntax
SELECT
EOMONTH()
FROM Employees;

-- ✅ Correct
SELECT
EOMONTH(joining_date)
FROM Employees;

--------------------------------------------------

-- Mistake 10
-- ❌ Wrong FORMAT() syntax
SELECT
FORMAT(salary, 2)
FROM Employees;

-- ✅ Correct
SELECT
FORMAT(salary, 'N2')
FROM Employees;

--------------------------------------------------

-- Mistake 11
-- ❌ Wrong CONVERT() syntax
SELECT
CONVERT(order_date, 'dd/mm/yyyy')
FROM Orders;

-- ✅ Correct
SELECT
CONVERT(VARCHAR, order_date, 103)
FROM Orders;

--------------------------------------------------

-- Mistake 12
-- ❌ Missing precision in CAST()
SELECT
CAST(amount AS DECIMAL)
FROM Orders;

-- ✅ Correct
SELECT
CAST(amount AS DECIMAL(10,2))
FROM Orders;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct DATEDIFF() date order
-- 2. Proper DATEADD() syntax
-- 3. Proper GROUP BY usage
-- 4. Correct DATEPART() parameters
-- 5. Correct DATENAME() parameters
-- 6. Proper ISDATE() filtering
-- 7. Proper DATETRUNC() grouping
-- 8. Proper FORMAT() patterns
-- 9. Correct CONVERT() style codes
-- 10. Proper CAST() precision and scale

-- ============================================
-- END OF FILE
-- ============================================
