-- ============================================
-- 🔗 WINDOW VALUE FUNCTIONS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: MonthlySales
-- Columns:
-- month, revenue

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, employee_name, joining_date,
-- retirement_date, department, salary

-- 🗂️ TABLE: Orders
-- Columns:
-- order_id, customer_id, order_date, amount

-- 🗂️ TABLE: Flights
-- Columns:
-- flight_id, departure_time

-- 🗂️ TABLE: StockPrices
-- Columns:
-- trade_date, closing_price

-- 🗂️ TABLE: Sales
-- Columns:
-- sale_id, sale_date, revenue

-- ============================================
-- 1. Display previous month's revenue.
SELECT
month,
revenue,
LAG(revenue) OVER(ORDER BY month)
FROM MonthlySales;

-- ============================================
-- 2. Display joining date of the employee who joined immediately before.
SELECT
employee_name,
joining_date,
LAG(joining_date) OVER(ORDER BY joining_date)
FROM Employees;

-- ============================================
-- 3. Display amount of the previous order.
SELECT
order_date,
amount,
LAG(amount) OVER(ORDER BY order_date)
FROM Orders;

-- ============================================
-- 4. Display departure time of the next flight.
SELECT
flight_id,
departure_time,
LEAD(departure_time) OVER(ORDER BY departure_time)
FROM Flights;

-- ============================================
-- 5. Display next day's closing stock price.
SELECT
trade_date,
closing_price,
LEAD(closing_price) OVER(ORDER BY trade_date)
FROM StockPrices;

-- ============================================
-- 6. Display retirement date of the next retiring employee.
SELECT
employee_name,
retirement_date,
LEAD(retirement_date) OVER(ORDER BY retirement_date)
FROM Employees;

-- ============================================
-- 7. Display revenue from the first sale.
SELECT
sale_date,
revenue,
FIRST_VALUE(revenue) OVER(ORDER BY sale_date)
FROM Sales;

-- ============================================
-- 8. Display lowest salary within each department.
SELECT
department,
employee_name,
salary,
FIRST_VALUE(salary) OVER(
PARTITION BY department
ORDER BY salary
)
FROM Employees;

-- ============================================
-- 9. Display first order date of each customer.
SELECT
customer_id,
order_date,
FIRST_VALUE(order_date) OVER(
PARTITION BY customer_id
ORDER BY order_date
)
FROM Orders;

-- ============================================
-- 10. Display revenue from the last sale.
SELECT
sale_date,
revenue,
LAST_VALUE(revenue) OVER(
ORDER BY sale_date
ROWS BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING
)
FROM Sales;

-- ============================================
-- 11. Display highest salary within each department.
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

-- ============================================
-- 12. Display latest order date of each customer.
SELECT
customer_id,
order_date,
LAST_VALUE(order_date) OVER(
PARTITION BY customer_id
ORDER BY order_date
ROWS BETWEEN CURRENT ROW
AND UNBOUNDED FOLLOWING
)
FROM Orders;

-- ============================================
-- END OF FILE
-- ============================================
