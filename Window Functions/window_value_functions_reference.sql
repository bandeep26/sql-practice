-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (WINDOW VALUE FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: MonthlySales

CREATE TABLE MonthlySales (
month VARCHAR(10),
revenue DECIMAL(10,2)
);

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
joining_date DATE,
retirement_date DATE,
department VARCHAR(50),
salary DECIMAL(10,2)
);

-- 🗂️ TABLE: Orders

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
amount DECIMAL(10,2)
);

-- 🗂️ TABLE: Flights

CREATE TABLE Flights (
flight_id INT PRIMARY KEY,
departure_time TIME
);

-- 🗂️ TABLE: StockPrices

CREATE TABLE StockPrices (
trade_date DATE,
closing_price DECIMAL(10,2)
);

-- 🗂️ TABLE: Sales

CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
sale_date DATE,
revenue DECIMAL(10,2)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 12

-- Topics Covered:
-- LAG()
-- LEAD()
-- FIRST_VALUE()
-- LAST_VALUE()

-- Key Learnings:
-- 1. Accessing previous row values
-- 2. Accessing next row values
-- 3. Retrieving first value in a partition
-- 4. Retrieving last value in a partition
-- 5. Using PARTITION BY with value functions
-- 6. Using ORDER BY with value functions
-- 7. Window frame handling in LAST_VALUE()

-- ============================================
-- END OF NOTES
-- ============================================
