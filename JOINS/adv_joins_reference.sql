-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (FULL ANTI JOIN, CROSS JOIN)
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

-- Total Questions Practiced: 10

-- Topics Covered:
-- FULL ANTI JOIN logic
-- CROSS JOIN (Cartesian product)
-- NULL filtering in FULL JOIN
-- COALESCE usage
-- Pattern filtering with CROSS JOIN

-- Key Learnings:
-- 1. FULL ANTI JOIN returns non-matching rows from both tables
-- 2. NULL checks determine unmatched rows
-- 3. CROSS JOIN returns all possible combinations
-- 4. Filtering after CROSS JOIN reduces combinations
-- 5. COALESCE replaces NULL values effectively

-- ============================================
-- END OF NOTES
-- ============================================
