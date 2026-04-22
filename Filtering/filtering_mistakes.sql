-- ============================================
-- 📌 SQL MISTAKES FILE (FILTERING)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Using = instead of IN
SELECT * FROM Employees
WHERE department = ('IT', 'HR');

-- ✅ Correct
SELECT * FROM Employees
WHERE department IN ('IT', 'HR');

--------------------------------------------------

-- Mistake 2
-- ❌ Wrong LIKE usage
SELECT * FROM Employees
WHERE name LIKE 'A';

-- ✅ Correct
SELECT * FROM Employees
WHERE name LIKE 'A%';

--------------------------------------------------

-- Mistake 3
-- ❌ Using = NULL
SELECT * FROM Employees
WHERE city = NULL;

-- ✅ Correct
SELECT * FROM Employees
WHERE city IS NULL;

--------------------------------------------------

-- Mistake 4
-- ❌ Missing quotes for strings
SELECT * FROM Employees
WHERE department = IT;

-- ✅ Correct
SELECT * FROM Employees
WHERE department = 'IT';

--------------------------------------------------

-- Mistake 5
-- ❌ Confusing AND / OR
SELECT * FROM Employees
WHERE department = 'IT' OR city = 'Mumbai';

-- ⚠️ May return unintended results

-- ✅ Correct (if both needed)
SELECT * FROM Employees
WHERE department = 'IT' AND city = 'Mumbai';

--------------------------------------------------

-- Mistake 6
-- ❌ Incorrect BETWEEN usage
SELECT * FROM Employees
WHERE salary BETWEEN 60000 AND 30000;

-- ✅ Correct
SELECT * FROM Employees
WHERE salary BETWEEN 30000 AND 60000;

--------------------------------------------------

-- Mistake 7
-- ❌ Forgetting ORDER BY direction
SELECT * FROM Employees
WHERE salary > 40000
ORDER BY salary;

-- ✅ Better (explicit)
SELECT * FROM Employees
WHERE salary > 40000
ORDER BY salary DESC;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct use of IN vs =
-- 2. Proper LIKE patterns
-- 3. Handling NULL correctly
-- 4. Logical clarity (AND vs OR)
-- 5. Range correctness in BETWEEN
-- 6. Explicit sorting with ORDER BY

-- ============================================
-- END OF FILE
-- ============================================