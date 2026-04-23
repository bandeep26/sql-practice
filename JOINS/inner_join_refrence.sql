-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (INNER JOIN)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
salary DECIMAL(10,2)
);

-- 🗂️ TABLE: Departments

CREATE TABLE Departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 5

-- Topics Covered:
-- INNER JOIN basics
-- Joining two tables
-- Filtering with JOIN
-- Aggregation with JOIN
-- GROUP BY with JOIN

-- Key Learnings:
-- 1. INNER JOIN returns only matching records from both tables
-- 2. Unmatched rows are excluded automatically
-- 3. NULL values in join columns do not match
-- 4. Aliases improve readability and reduce errors
-- 5. WHERE clause can be used after JOIN for filtering

-- ============================================
-- END OF NOTES
-- ============================================
