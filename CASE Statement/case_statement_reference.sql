-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (CASE STATEMENT)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary DECIMAL(10,2),
department VARCHAR(50),
department_code VARCHAR(10),
bonus DECIMAL(10,2)
);

-- 🗂️ TABLE: Orders

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
amount DECIMAL(10,2),
status_code CHAR(1),
order_year INT
);

-- 🗂️ TABLE: Customers

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
email VARCHAR(100)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 8

-- Topics Covered:
-- CASE for Categorization
-- CASE for Mapping Values
-- CASE for NULL Handling
-- CASE with Conditional Aggregation

-- Key Learnings:
-- 1. Categorizing business data dynamically
-- 2. Mapping codes into readable labels
-- 3. Handling NULL values using CASE
-- 4. Building KPI-style conditional aggregations
-- 5. Using CASE with SUM()
-- 6. Creating analytical reporting outputs

-- ============================================
-- END OF NOTES
-- ============================================
