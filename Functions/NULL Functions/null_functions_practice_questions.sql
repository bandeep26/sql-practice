-- ============================================
-- 🔗 NULL FUNCTIONS PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, name, salary, bonus, commission,
-- email, phone_number, manager_id

-- ============================================
-- 1. Retrieve employees whose manager_id is NULL.
SELECT *
FROM Employees
WHERE manager_id IS NULL;

-- ============================================
-- 2. Get employees whose manager_id is NOT NULL.
SELECT *
FROM Employees
WHERE manager_id IS NOT NULL;

-- ============================================
-- 3. Replace NULL bonuses with 0 using COALESCE().
SELECT
name,
COALESCE(bonus, 0) AS updated_bonus
FROM Employees;

-- ============================================
-- 4. Retrieve employees whose bonus is NULL.
SELECT
name
FROM Employees
WHERE bonus IS NULL;

-- ============================================
-- 5. Replace NULL bonuses with 1000.
SELECT
name,
COALESCE(bonus, 1000) AS updated_bonus
FROM Employees;

-- ============================================
-- 6. Replace NULL emails with 'No Email'.
SELECT
name,
COALESCE(email, 'No Email') AS upd_email
FROM Employees;

-- ============================================
-- 7. Retrieve employees whose salary is NOT NULL.
SELECT
name
FROM Employees
WHERE salary IS NOT NULL;

-- ============================================
-- 8. Replace NULL phone numbers with 'Not Provided'.
SELECT
name,
ISNULL(phone_number, 'Not Provided') AS upd_phone
FROM Employees;

-- ============================================
-- 9. Retrieve employees whose bonus is NOT NULL.
SELECT
name
FROM Employees
WHERE bonus IS NOT NULL;

-- ============================================
-- 10. Replace NULL commission with 500.
SELECT
name,
COALESCE(commission, 500) AS upd_commission
FROM Employees;

-- ============================================
-- 11. Convert bonus = 0 into NULL using NULLIF().
SELECT
name,
NULLIF(bonus, 0) AS upd_bonus
FROM Employees;

-- ============================================
-- 12. Convert salary = 0 into NULL using NULLIF().
SELECT
name,
NULLIF(salary, 0) AS upd_salary
FROM Employees;

-- ============================================
-- 13. Convert commission = 0 into NULL using NULLIF().
SELECT
name,
NULLIF(commission, 0) AS upd_commission
FROM Employees;

-- ============================================
-- END OF FILE
-- ============================================
