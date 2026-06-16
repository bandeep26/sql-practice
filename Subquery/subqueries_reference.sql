-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (SUBQUERIES)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary DECIMAL(10,2),
department_id INT,
joining_date DATE
);

-- 🗂️ TABLE: Departments

CREATE TABLE Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

-- 🗂️ TABLE: Orders

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
amount DECIMAL(10,2),
order_date DATE
);

-- 🗂️ TABLE: Customers

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50)
);

-- 🗂️ TABLE: Products

CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
price DECIMAL(10,2)
);

-- 🗂️ TABLE: Sales

CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
region VARCHAR(50),
revenue DECIMAL(10,2)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 12

-- Topics Covered:
-- SELECT Subqueries
-- FROM Subqueries
-- WHERE Subqueries
-- JOIN Subqueries

-- Key Learnings:
-- 1. Scalar subqueries in SELECT
-- 2. Derived tables in FROM
-- 3. Filtering with subqueries
-- 4. Joining aggregated subqueries
-- 5. Company-level metrics
-- 6. Customer-level analysis
-- 7. Department-level analysis
-- 8. Revenue-based analysis

-- ============================================
-- END OF NOTES
-- ============================================
