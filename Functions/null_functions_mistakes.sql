-- ============================================
-- 📌 SQL MISTAKES FILE (NULL FUNCTIONS)
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
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Using = NULL
SELECT *
FROM Employees
WHERE manager_id = NULL;

-- ✅ Correct
SELECT *
FROM Employees
WHERE manager_id IS NULL;

--------------------------------------------------

-- Mistake 2
-- ❌ Using <> NULL
SELECT *
FROM Employees
WHERE salary <> NULL;

-- ✅ Correct
SELECT *
FROM Employees
WHERE salary IS NOT NULL;

--------------------------------------------------

-- Mistake 3
-- ❌ Incorrect COALESCE syntax
SELECT COALESCE(bonus)
FROM Employees;

-- ✅ Correct
SELECT COALESCE(bonus, 0)
FROM Employees;

--------------------------------------------------

-- Mistake 4
-- ❌ Incorrect NULLIF syntax
SELECT NULLIF(bonus)
FROM Employees;

-- ✅ Correct
SELECT NULLIF(bonus, 0)
FROM Employees;

--------------------------------------------------

-- Mistake 5
-- ❌ Comparing NULL using =
SELECT *
FROM Employees
WHERE email = 'NULL';

-- ✅ Correct
SELECT *
FROM Employees
WHERE email IS NULL;

--------------------------------------------------

-- Mistake 6
-- ❌ Missing alias for transformed column
SELECT
name,
COALESCE(email, 'No Email')
FROM Employees;

-- ✅ Correct
SELECT
name,
COALESCE(email, 'No Email') AS upd_email
FROM Employees;

--------------------------------------------------

-- Mistake 7
-- ❌ Using NOT NULL directly in WHERE
SELECT *
FROM Employees
WHERE bonus NOT NULL;

-- ✅ Correct
SELECT *
FROM Employees
WHERE bonus IS NOT NULL;

--------------------------------------------------

-- Mistake 8
-- ❌ Using NULLIF with wrong comparison value
SELECT
NULLIF(commission, 100)
FROM Employees;

-- ✅ Correct
SELECT
NULLIF(commission, 0)
FROM Employees;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Proper NULL checking syntax
-- 2. Correct COALESCE() usage
-- 3. Correct NULLIF() syntax
-- 4. Difference between NULL and strings
-- 5. Proper aliasing for transformed columns
-- 6. Correct NULL filtering logic

-- ============================================
-- END OF FILE
-- ============================================
