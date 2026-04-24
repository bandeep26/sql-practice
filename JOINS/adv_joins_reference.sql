-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (FULL ANTI JOIN, CROSS JOIN, MULTIPLE JOINS)
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

-- 🗂️ TABLE: Locations

CREATE TABLE Locations (
dept_id INT,
city VARCHAR(50)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 15

-- Topics Covered:
-- FULL ANTI JOIN
-- CROSS JOIN
-- Joining multiple tables
-- NULL filtering logic
-- COALESCE usage
-- Mixed JOIN strategies

-- Key Learnings:
-- 1. FULL ANTI JOIN isolates non-matching rows using NULL conditions
-- 2. CROSS JOIN generates Cartesian products
-- 3. Multiple JOINs require proper ON conditions for each table
-- 4. LEFT and INNER JOIN combinations control result sets
-- 5. NULL checks determine inclusion/exclusion logic
-- 6. COALESCE replaces NULL values effectively

-- ============================================
-- END OF NOTES
-- ============================================
