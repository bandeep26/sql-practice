-- ============================================
-- 🔗 DATE & TIME FUNCTIONS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Orders
-- Columns:
-- order_id, customer_id, order_date,
-- delivery_date, shipping_date, amount

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, joining_date, resignation_date, salary

-- 🗂️ TABLE: Sales
-- Columns:
-- sale_id, sale_date, revenue

-- 🗂️ TABLE: DatesData
-- Columns:
-- id, date_value

-- ============================================
-- 1. Find total sales amount for each month.
SELECT
MONTH(order_date) AS Orders_per_month,
SUM(amount) AS Tot_sales
FROM Orders
GROUP BY Orders_per_month;

-- ============================================
-- 2. Find total sales for each year.
SELECT
YEAR(order_date) AS Sales_per_year,
SUM(amount) AS Tot_sales
FROM Orders
GROUP BY Sales_per_year;

-- ============================================
-- 3. Find number of orders placed in each month.
SELECT
MONTH(order_date) AS Orders_per_month,
COUNT(order_id)
FROM Orders
GROUP BY Orders_per_month;

-- ============================================
-- 4. Find how many employees joined in each month.
SELECT
COUNT(emp_id) AS Emp_joined,
MONTH(joining_date) AS Joining_month
FROM Employees
GROUP BY Joining_month;

-- ============================================
-- 5. Find total revenue generated on each day of the month.
SELECT
DAY(sale_date),
SUM(revenue)
FROM Sales
GROUP BY DAY(sale_date);

-- ============================================
-- 6. Find total sales for each week number.
SELECT
DATEPART(week, order_date),
SUM(amount)
FROM Orders
GROUP BY DATEPART(week, order_date);

-- ============================================
-- 7. Find how many employees joined in each week.
SELECT
DATEPART(week, joining_date),
COUNT(emp_id)
FROM Employees
GROUP BY DATEPART(week, joining_date);

-- ============================================
-- 8. Find total sales for each weekday.
SELECT
DATEPART(dw, order_date),
SUM(amount)
FROM Orders
GROUP BY DATEPART(dw, order_date);

-- ============================================
-- 9. Find month names and total sales for each month.
SELECT
DATENAME(month, order_date),
SUM(amount)
FROM Orders
GROUP BY DATENAME(month, order_date);

-- ============================================
-- 10. Find weekday names on which employees joined.
SELECT
DATENAME(weekday, joining_date),
COUNT(emp_id)
FROM Employees
GROUP BY DATENAME(weekday, joining_date);

-- ============================================
-- 11. Find quarter numbers and total revenue for each quarter.
SELECT
DATEPART(quarter, sale_date),
SUM(revenue)
FROM Sales
GROUP BY DATEPART(quarter, sale_date);

-- ============================================
-- 12. Find monthly sales by truncating dates to month level.
SELECT
DATETRUNC(month, order_date),
SUM(amount)
FROM Orders
GROUP BY DATETRUNC(month, order_date);

-- ============================================
-- 13. Find weekly sales by truncating dates to week level.
SELECT
DATETRUNC(week, order_date),
SUM(amount)
FROM Orders
GROUP BY DATETRUNC(week, order_date);

-- ============================================
-- 14. Find month-end date for each employee joining date.
SELECT
EOMONTH(joining_date)
FROM Employees;

-- ============================================
-- 15. Find month-end dates and total revenue grouped by month-end.
SELECT
EOMONTH(sale_date),
SUM(revenue)
FROM Sales
GROUP BY EOMONTH(sale_date);

-- ============================================
-- 16. Find employee joining dates after adding 30 days.
SELECT
DATEADD(day, 30, joining_date)
FROM Employees;

-- ============================================
-- 17. Find order dates after adding 2 months.
SELECT
DATEADD(month, 2, order_date)
FROM Orders;

-- ============================================
-- 18. Find sale dates after subtracting 10 days.
SELECT
DATEADD(day, -10, sale_date)
FROM Sales;

-- ============================================
-- 19. Find total years worked by each employee.
SELECT
DATEDIFF(year, joining_date, resignation_date)
FROM Employees;

-- ============================================
-- 20. Find delivery time in days for each order.
SELECT
DATEDIFF(day, order_date, delivery_date) AS Delivery_time
FROM Orders;

-- ============================================
-- 21. Find sale dates after adding 1 year.
SELECT
DATEADD(year, 1, sale_date)
FROM Sales;

-- ============================================
-- 22. Find joining dates after subtracting 6 months.
SELECT
DATEADD(month, -6, joining_date)
FROM Employees;

-- ============================================
-- 23. Find shipping delay in days for each order.
SELECT
DATEDIFF(day, order_date, shipping_date) AS Delay_in_time
FROM Orders;

-- ============================================
-- 24. Check whether each value is a valid date.
SELECT
ISDATE(date_value)
FROM DatesData;

-- ============================================
-- 25. Retrieve only rows containing valid dates.
SELECT
*
FROM DatesData
WHERE ISDATE(date_value) = 1;

-- ============================================
-- 26. Format order dates as dd-MM-yyyy.
SELECT
FORMAT(order_date, 'dd-MM-yyyy')
FROM Orders;

-- ============================================
-- 27. Format salary values with 2 decimal places.
SELECT
FORMAT(salary, 'N2')
FROM Employees;

-- ============================================
-- 28. Convert order_date into dd/mm/yyyy format.
SELECT
CONVERT(VARCHAR, order_date, 103)
FROM Orders;

-- ============================================
-- 29. Convert salary into VARCHAR datatype.
SELECT
CONVERT(VARCHAR, salary)
FROM Employees;

-- ============================================
-- 30. Cast salary into VARCHAR datatype.
SELECT
CAST(salary AS VARCHAR)
FROM Employees;

-- ============================================
-- 31. Cast amount into DECIMAL datatype with 2 decimal places.
SELECT
CAST(amount AS DECIMAL(10,2))
FROM Orders;

-- ============================================
-- END OF FILE
-- ============================================
