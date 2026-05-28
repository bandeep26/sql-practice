-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (DATE & TIME FUNCTIONS)
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

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
joining_date DATE,
resignation_date DATE,
salary DECIMAL(10,2)
);

-- 🗂️ TABLE: Sales

CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
sale_date DATE,
revenue DECIMAL(10,2)
);

-- 🗂️ TABLE: DatesData

CREATE TABLE DatesData (
id INT PRIMARY KEY,
date_value VARCHAR(50)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 31

-- Topics Covered:
-- DAY()
-- MONTH()
-- YEAR()
-- DATEPART()
-- DATENAME()
-- DATETRUNC()
-- EOMONTH()
-- DATEADD()
-- DATEDIFF()
-- ISDATE()
-- FORMAT()
-- CONVERT()
-- CAST()

-- Key Learnings:
-- 1. Monthly, yearly, weekly reporting
-- 2. Quarter-based analytical aggregation
-- 3. Business reporting using DATENAME()
-- 4. Time-series grouping using DATETRUNC()
-- 5. Month-end reporting using EOMONTH()
-- 6. Adding/subtracting dates using DATEADD()
-- 7. Calculating delays and durations using DATEDIFF()
-- 8. Validating date values using ISDATE()
-- 9. Formatting dates and numbers using FORMAT()
-- 10. Datatype conversion using CONVERT() and CAST()

-- ============================================
-- END OF NOTES
-- ============================================
