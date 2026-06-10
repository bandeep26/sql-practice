-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (WINDOW AGGREGATE FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Sales

CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
category VARCHAR(50),
revenue DECIMAL(10,2)
);

-- 🗂️ TABLE: Orders

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
city VARCHAR(50),
amount DECIMAL(10,2)
);

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
department VARCHAR(50),
salary DECIMAL(10,2)
);

-- 🗂️ TABLE: Products

CREATE TABLE Products (
product_id INT PRIMARY KEY,
category VARCHAR(50),
price DECIMAL(10,2)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 15

-- Topics Covered:
-- SUM() OVER()
-- AVG() OVER()
-- COUNT() OVER()
-- MIN() OVER()
-- MAX() OVER()
-- PARTITION BY

-- Key Learnings:
-- 1. Performing aggregations without collapsing rows
-- 2. Using PARTITION BY for grouped calculations
-- 3. Department-level analysis
-- 4. Customer-level analysis
-- 5. Product category analysis
-- 6. City-level analysis
-- 7. Window aggregate reporting

-- ============================================
-- END OF NOTES
-- ============================================
