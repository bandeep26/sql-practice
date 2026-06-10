-- ============================================
-- 🔗 WINDOW AGGREGATE FUNCTIONS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Sales
-- Columns:
-- sale_id, category, revenue

-- 🗂️ TABLE: Orders
-- Columns:
-- order_id, customer_id, city, amount

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, department, salary

-- 🗂️ TABLE: Products
-- Columns:
-- product_id, category, price

-- ============================================
-- 1. Display total revenue of each category for every sale.
SELECT
category,
revenue,
SUM(revenue) OVER(PARTITION BY category) AS Total_revenue
FROM Sales;

-- ============================================
-- 2. Display total amount spent by each customer for every order.
SELECT
customer_id,
amount,
SUM(amount) OVER(PARTITION BY customer_id) AS amount_spent
FROM Orders;

-- ============================================
-- 3. Display total salary expense of each department for every employee.
SELECT
department,
salary,
SUM(salary) OVER(PARTITION BY department) AS salary_exp_dept
FROM Employees;

-- ============================================
-- 4. Display average salary of each department for every employee.
SELECT
department,
salary,
AVG(salary) OVER(PARTITION BY department) AS salary_avg_dept
FROM Employees;

-- ============================================
-- 5. Display average product price of each category.
SELECT
category,
price,
AVG(price) OVER(PARTITION BY category) AS avg_price
FROM Products;

-- ============================================
-- 6. Display average order amount of each city.
SELECT
city,
amount,
AVG(amount) OVER(PARTITION BY city) AS avg_order
FROM Orders;

-- ============================================
-- 7. Display number of employees in each department.
SELECT
department,
COUNT(emp_id) OVER(PARTITION BY department) AS tot_emp
FROM Employees;

-- ============================================
-- 8. Display number of orders placed by each customer.
SELECT
customer_id,
COUNT(order_id) OVER(PARTITION BY customer_id) AS tot_orders
FROM Orders;

-- ============================================
-- 9. Display number of products in each category.
SELECT
category,
COUNT(product_id) OVER(PARTITION BY category) AS tot_products
FROM Products;

-- ============================================
-- 10. Display minimum salary in each department.
SELECT
department,
salary,
MIN(salary) OVER(PARTITION BY department) AS min_sal_dept
FROM Employees;

-- ============================================
-- 11. Display minimum product price in each category.
SELECT
category,
price,
MIN(price) OVER(PARTITION BY category) AS min_price
FROM Products;

-- ============================================
-- 12. Display minimum order amount in each city.
SELECT
city,
amount,
MIN(amount) OVER(PARTITION BY city) AS min_amount
FROM Orders;

-- ============================================
-- 13. Display maximum salary in each department.
SELECT
department,
salary,
MAX(salary) OVER(PARTITION BY department) AS max_sal_dept
FROM Employees;

-- ============================================
-- 14. Display maximum product price in each category.
SELECT
category,
price,
MAX(price) OVER(PARTITION BY category) AS max_price
FROM Products;

-- ============================================
-- 15. Display maximum order amount in each city.
SELECT
city,
amount,
MAX(amount) OVER(PARTITION BY city) AS max_amount
FROM Orders;

-- ============================================
-- END OF FILE
-- ============================================
