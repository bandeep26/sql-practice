-- ============================================
-- 🔗 STRING FUNCTIONS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, first_name, last_name,
-- email, phone, city

-- 🗂️ TABLE: Customers
-- Columns:
-- customer_id, city

-- 🗂️ TABLE: Products
-- Columns:
-- product_id, product_name

-- ============================================
-- 1. Combine first_name and last_name with space.
SELECT
CONCAT(first_name, ' ', last_name)
FROM Employees;

-- ============================================
-- 2. Create full employee info with city.
SELECT
CONCAT(first_name, ' ', last_name, ' - ', city)
FROM Employees;

-- ============================================
-- 3. Create official email IDs.
SELECT
CONCAT(first_name, '.', last_name, '@', email)
FROM Employees;

-- ============================================
-- 4. Convert first names into uppercase.
SELECT
UPPER(first_name)
FROM Employees;

-- ============================================
-- 5. Convert city names into uppercase.
SELECT
UPPER(city)
FROM Employees;

-- ============================================
-- 6. Convert first names into lowercase.
SELECT
LOWER(first_name)
FROM Employees;

-- ============================================
-- 7. Convert email addresses into lowercase.
SELECT
LOWER(email)
FROM Employees;

-- ============================================
-- 8. Remove extra spaces from first names.
SELECT
TRIM(first_name)
FROM Employees;

-- ============================================
-- 9. Remove extra spaces from city names.
SELECT
TRIM(city)
FROM Customers;

-- ============================================
-- 10. Remove extra spaces from email addresses.
SELECT
TRIM(email)
FROM Employees;

-- ============================================
-- 11. Remove '-' from phone numbers.
SELECT
REPLACE(phone, '-', '')
FROM Employees;

-- ============================================
-- 12. Replace gmail.com with company.com.
SELECT
REPLACE(email, 'gmail.com', 'company.com')
FROM Employees;

-- ============================================
-- 13. Replace '_' with spaces in product names.
SELECT
REPLACE(product_name, '_', ' ')
FROM Products;

-- ============================================
-- 14. Get length of employee first names.
SELECT
LEN(first_name) AS name_length
FROM Employees;

-- ============================================
-- 15. Get city names and their lengths.
SELECT
city,
LEN(city) AS city_name_length
FROM Customers;

-- ============================================
-- 16. Extract first 2 characters from first names.
SELECT
LEFT(first_name, 2) AS first2letters
FROM Employees;

-- ============================================
-- 17. Extract first 3 characters from city names.
SELECT
LEFT(city, 3) AS first3char
FROM Customers;

-- ============================================
-- 18. Extract last 4 digits from phone numbers.
SELECT
RIGHT(phone, 4) AS last4dig
FROM Employees;

-- ============================================
-- 19. Extract first 5 characters from email addresses.
SELECT
SUBSTRING(email, 1, 5)
FROM Employees;

-- ============================================
-- 20. Extract characters starting from position 3 with length 4 from phone numbers.
SELECT
SUBSTRING(phone, 3, 4)
FROM Employees;

-- ============================================
-- END OF FILE
-- ============================================
