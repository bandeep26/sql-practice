-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (WINDOW RANK FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary DECIMAL(10,2)
);

-- 🗂️ TABLE: Orders

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
amount DECIMAL(10,2)
);

-- 🗂️ TABLE: Sales

CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
category VARCHAR(50),
region VARCHAR(50),
revenue DECIMAL(10,2)
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

-- Total Questions Practiced: 18

-- Topics Covered:
-- ROW_NUMBER()
-- RANK()
-- DENSE_RANK()
-- NTILE()
-- PERCENT_RANK()
-- CUME_DIST()

-- Key Learnings:
-- 1. Sequential row numbering
-- 2. Ranking with ties
-- 3. Dense ranking without gaps
-- 4. Grouping rows using NTILE()
-- 5. Percentile analysis using PERCENT_RANK()
-- 6. Cumulative distribution analysis using CUME_DIST()
-- 7. PARTITION BY with ranking functions
-- 8. ORDER BY within window functions

-- ============================================
-- END OF NOTES
-- ============================================
