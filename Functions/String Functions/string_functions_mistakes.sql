-- ============================================
-- 📌 SQL MISTAKES FILE (STRING FUNCTIONS)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone VARCHAR(20),
city VARCHAR(50)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Missing spaces in CONCAT()
SELECT
CONCAT(first_name, last_name)
FROM Employees;

-- ✅ Correct
SELECT
CONCAT(first_name, ' ', last_name)
FROM Employees;

--------------------------------------------------

-- Mistake 2
-- ❌ Missing SELECT statement
CONCAT(first_name, ' ', last_name);

-- ✅ Correct
SELECT
CONCAT(first_name, ' ', last_name)
FROM Employees;

--------------------------------------------------

-- Mistake 3
-- ❌ Wrong table used for city trimming
SELECT
TRIM(city)
FROM Employees;

-- ✅ Correct
SELECT
TRIM(city)
FROM Customers;

--------------------------------------------------

-- Mistake 4
-- ❌ Incorrect LEFT() syntax
SELECT
LEFT(first_name)
FROM Employees;

-- ✅ Correct
SELECT
LEFT(first_name, 2)
FROM Employees;

--------------------------------------------------

-- Mistake 5
-- ❌ Incorrect SUBSTRING() length
SELECT
SUBSTRING(phone, 3, 7)
FROM Employees;

-- ✅ Correct
SELECT
SUBSTRING(phone, 3, 4)
FROM Employees;

--------------------------------------------------

-- Mistake 6
-- ❌ Incorrect LEN() syntax
SELECT
LEN(email, 5)
FROM Employees;

-- ✅ Correct
SELECT
LEN(email)
FROM Employees;

--------------------------------------------------

-- Mistake 7
-- ❌ Incorrect REPLACE() syntax
SELECT
REPLACE(phone, '-')
FROM Employees;

-- ✅ Correct
SELECT
REPLACE(phone, '-', '')
FROM Employees;

--------------------------------------------------

-- Mistake 8
-- ❌ Incorrect RIGHT() syntax
SELECT
RIGHT(phone)
FROM Employees;

-- ✅ Correct
SELECT
RIGHT(phone, 4)
FROM Employees;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct CONCAT() formatting
-- 2. Proper LEFT() and RIGHT() syntax
-- 3. Proper SUBSTRING() parameters
-- 4. Correct LEN() usage
-- 5. Proper REPLACE() syntax
-- 6. Correct table usage
-- 7. String formatting consistency

-- ============================================
-- END OF FILE
-- ============================================
