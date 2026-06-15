-- ============================================
-- 🔗 WINDOW RANK FUNCTIONS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, employee_name, salary

-- 🗂️ TABLE: Orders
-- Columns:
-- order_id, customer_id, amount

-- 🗂️ TABLE: Sales
-- Columns:
-- sale_id, category, region, revenue

-- 🗂️ TABLE: Products
-- Columns:
-- product_id, category, price

-- ============================================
-- 1. Assign row numbers based on salary in descending order.
SELECT
employee_name,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC)
FROM Employees;

-- ============================================
-- 2. Assign row numbers within each customer based on order amount.
SELECT
customer_id,
amount,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC)
FROM Orders;

-- ============================================
-- 3. Assign row numbers within each category based on revenue.
SELECT
category,
revenue,
ROW_NUMBER() OVER(PARTITION BY category ORDER BY revenue DESC)
FROM Sales;

-- ============================================
-- 4. Rank employees based on salary.
SELECT
employee_name,
salary,
RANK() OVER(ORDER BY salary DESC)
FROM Employees;

-- ============================================
-- 5. Rank products within each category based on price.
SELECT
category,
price,
RANK() OVER(PARTITION BY category ORDER BY price DESC)
FROM Products;

-- ============================================
-- 6. Rank sales within each region based on revenue.
SELECT
region,
revenue,
RANK() OVER(PARTITION BY region ORDER BY revenue DESC)
FROM Sales;

-- ============================================
-- 7. Dense rank employees based on salary.
SELECT
employee_name,
salary,
DENSE_RANK() OVER(ORDER BY salary DESC)
FROM Employees;

-- ============================================
-- 8. Dense rank products within each category based on price.
SELECT
category,
price,
DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC)
FROM Products;

-- ============================================
-- 9. Dense rank sales within each region based on revenue.
SELECT
region,
revenue,
DENSE_RANK() OVER(PARTITION BY region ORDER BY revenue DESC)
FROM Sales;

-- ============================================
-- 10. Divide employees into 3 salary groups.
SELECT
employee_name,
salary,
NTILE(3) OVER(ORDER BY salary DESC)
FROM Employees;

-- ============================================
-- 11. Divide products into 2 price groups.
SELECT
product_id,
price,
NTILE(2) OVER(ORDER BY price DESC)
FROM Products;

-- ============================================
-- 12. Divide sales into 4 revenue groups.
SELECT
region,
revenue,
NTILE(4) OVER(ORDER BY revenue DESC)
FROM Sales;

-- ============================================
-- 13. Calculate percentage rank of employees by salary.
SELECT
employee_name,
salary,
PERCENT_RANK() OVER(ORDER BY salary)
FROM Employees;

-- ============================================
-- 14. Calculate percentage rank of products within category.
SELECT
category,
price,
PERCENT_RANK() OVER(PARTITION BY category ORDER BY price)
FROM Products;

-- ============================================
-- 15. Calculate percentage rank of sales within region.
SELECT
region,
revenue,
PERCENT_RANK() OVER(PARTITION BY region ORDER BY revenue)
FROM Sales;

-- ============================================
-- 16. Calculate cumulative distribution of employees by salary.
SELECT
employee_name,
salary,
CUME_DIST() OVER(ORDER BY salary)
FROM Employees;

-- ============================================
-- 17. Calculate cumulative distribution of products within category.
SELECT
category,
price,
CUME_DIST() OVER(PARTITION BY category ORDER BY price)
FROM Products;

-- ============================================
-- 18. Calculate cumulative distribution of sales within region.
SELECT
region,
revenue,
CUME_DIST() OVER(PARTITION BY region ORDER BY revenue)
FROM Sales;

-- ============================================
-- END OF FILE
-- ============================================
