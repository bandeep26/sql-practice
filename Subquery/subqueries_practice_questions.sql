-- ============================================
-- 🔗 SUBQUERIES PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, employee_name, salary,
-- department_id, joining_date

-- 🗂️ TABLE: Departments
-- Columns:
-- department_id, department_name

-- 🗂️ TABLE: Orders
-- Columns:
-- order_id, customer_id, amount, order_date

-- 🗂️ TABLE: Customers
-- Columns:
-- customer_id, customer_name

-- 🗂️ TABLE: Products
-- Columns:
-- product_id, product_name, price

-- 🗂️ TABLE: Sales
-- Columns:
-- sale_id, region, revenue

-- ============================================
-- 1. Display company average salary for every employee.
SELECT
employee_name,
salary,
(
    SELECT AVG(salary)
    FROM Employees
) AS company_avg_salary
FROM Employees;

-- ============================================
-- 2. Display total number of orders for every order.
SELECT
order_id,
amount,
(
    SELECT COUNT(order_id)
    FROM Orders
) AS Total_orders
FROM Orders;

-- ============================================
-- 3. Display highest product price for every product.
SELECT
product_name,
price,
(
    SELECT MAX(price)
    FROM Products
) AS highest_prod_price
FROM Products;

-- ============================================
-- 4. Display total amount spent by each customer.
SELECT
customer_id,
amount_spent
FROM
(
    SELECT
    customer_id,
    SUM(amount) AS amount_spent
    FROM Orders
    GROUP BY customer_id
) t;

-- ============================================
-- 5. Display average salary by department.
SELECT
department,
avg_salary
FROM
(
    SELECT
    department,
    AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department
) t;

-- ============================================
-- 6. Display total revenue by region.
SELECT
region,
Tot_revenue
FROM
(
    SELECT
    region,
    SUM(revenue) AS Tot_revenue
    FROM Sales
    GROUP BY region
) t;

-- ============================================
-- 7. Display employees earning above company average salary.
SELECT
employee_name,
salary
FROM Employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
);

-- ============================================
-- 8. Display products with the highest product price.
SELECT
product_name,
price
FROM Products
WHERE price =
(
    SELECT MAX(price)
    FROM Products
);

-- ============================================
-- 9. Display orders below average order amount.
SELECT
customer_id,
amount
FROM Orders
WHERE amount <
(
    SELECT AVG(amount)
    FROM Orders
);

-- ============================================
-- 10. Display employee names and department names.
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

-- ============================================
-- 11. Display customer names with order details.
SELECT
c.customer_name,
o.order_id,
o.amount
FROM Orders AS o
JOIN
(
    SELECT
    customer_id,
    customer_name
    FROM Customers
) AS c
ON o.customer_id = c.customer_id;

-- ============================================
-- 12. Display customer names with total amount spent.
SELECT
c.customer_name,
o.total_amount
FROM Customers AS c
JOIN
(
    SELECT
    customer_id,
    SUM(amount) AS total_amount
    FROM Orders
    GROUP BY customer_id
) AS o
ON c.customer_id = o.customer_id;

-- ============================================
-- END OF FILE
-- ============================================
