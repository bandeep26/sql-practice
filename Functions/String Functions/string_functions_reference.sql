-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (STRING FUNCTIONS)
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

-- 🗂️ TABLE: Customers

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
city VARCHAR(50)
);

-- 🗂️ TABLE: Products

CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100)
);

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 20

-- Topics Covered:
-- CONCAT()
-- UPPER()
-- LOWER()
-- TRIM()
-- REPLACE()
-- LEN()
-- LEFT()
-- RIGHT()
-- SUBSTRING()

-- Key Learnings:
-- 1. CONCAT() combines multiple strings
-- 2. UPPER() converts text into uppercase
-- 3. LOWER() converts text into lowercase
-- 4. TRIM() removes extra spaces
-- 5. REPLACE() substitutes text patterns
-- 6. LEN() returns character length
-- 7. LEFT() extracts characters from left
-- 8. RIGHT() extracts characters from right
-- 9. SUBSTRING() extracts specific portions of text

-- ============================================
-- END OF NOTES
-- ============================================
