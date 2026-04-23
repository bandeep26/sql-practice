-- =====================================================
-- 📌 SQL PRACTICE QUESTIONS (JOINS: INNER, LEFT, FULL)
-- =====================================================

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

-- Total Questions Practiced: 15

-- Topics Covered:
-- INNER JOIN
-- LEFT JOIN
-- FULL JOIN
-- NULL handling in joins
-- Anti join logic
-- Aggregation with joins

-- Key Learnings:
-- 1. INNER JOIN returns only matching records
-- 2. LEFT JOIN keeps all rows from left table
-- 3. FULL JOIN keeps all rows from both tables
-- 4. NULL values indicate missing matches
-- 5. Filtering with NULL enables anti join logic
-- 6. COALESCE helps handle NULL values

-- ============================================
-- END OF NOTES
-- ============================================
