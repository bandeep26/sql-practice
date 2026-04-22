-- ============================================
-- 📌 SQL PRACTICE NOTES (BASIC QUERYING)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
age INT,
city VARCHAR(50)
);

-- ============================================
-- 📥 SAMPLE DATA
-- ============================================

INSERT INTO Employees VALUES
(1, 'Amit', 'IT', 60000, 28, 'Delhi'),
(2, 'Neha', 'HR', 45000, 32, 'Mumbai'),
(3, 'Raj', 'IT', 70000, 26, 'Delhi'),
(4, 'Sneha', 'Finance', 65000, 30, 'Pune'),
(5, 'Arjun', 'IT', 50000, 27, 'Chennai'),
(6, 'Kavya', 'HR', 48000, 29, 'Mumbai');

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practised: 15

-- Topics Covered:
-- SELECT, FROM, WHERE
-- ORDER BY (ASC, DESC, multiple)
-- DISTINCT
-- GROUP BY
-- HAVING
-- Aggregate Functions (SUM, COUNT, AVG)
-- TOP

-- Key Learnings:
-- 1. Clause order matters
-- 2. GROUP BY required with aggregates
-- 3. HAVING filters grouped data
-- 4. ORDER BY must specify a column
-- 5. Clean query structure improves readability

-- ============================================
-- END OF NOTES
-- ============================================
