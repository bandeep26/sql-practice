-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (NULL FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
salary DECIMAL(10,2),
bonus DECIMAL(10,2),
commission DECIMAL(10,2),
email VARCHAR(100),
phone_number VARCHAR(20),
manager_id INT
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 13

-- Topics Covered:
-- IS NULL
-- IS NOT NULL
-- COALESCE()
-- ISNULL()
-- NULLIF()
-- NULL filtering
-- NULL replacement

-- Key Learnings:
-- 1. NULL represents missing or unknown data
-- 2. IS NULL and IS NOT NULL are used for NULL filtering
-- 3. COALESCE() replaces NULL with fallback values
-- 4. ISNULL() is commonly used in SQL Server
-- 5. NULLIF() converts matching values into NULL
-- 6. NULL cannot be compared using = or <>

-- ============================================
-- END OF NOTES
-- ============================================
