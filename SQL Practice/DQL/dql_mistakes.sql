-- ============================================
-- 📌 DQL MISTAKES LOG
-- ============================================

-- ============================================
-- ❌ MISTAKE 1: Using multiple ORDER BY clauses
-- ============================================

-- 🔴 Your Query:
SELECT *
FROM employees
ORDER BY department ASC
ORDER BY salary dec;

-- ❌ Issues:
-- 1. Used ORDER BY twice (not allowed)
-- 2. Used 'dec' instead of 'DESC'

-- ✅ Correct Query:
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;

-- 💡 Summary:
-- Use only ONE ORDER BY clause.
-- Separate multiple columns using commas.
-- Always use correct keyword: DESC (not dec).

-- ============================================
-- ❌ MISTAKE 2: Using alias in HAVING clause
-- ============================================

-- 🔴 Your Query:
SELECT
department,
COUNT(emp_id) AS No_of_emp
FROM employees
GROUP BY department
HAVING No_of_emp > 3;

-- ❌ Issue:
-- Used alias (No_of_emp) inside HAVING (not reliable in many SQL dialects)

-- ✅ Correct Query:
SELECT
department,
COUNT(emp_id) AS No_of_emp
FROM employees
GROUP BY department
HAVING COUNT(emp_id) > 3;

-- 💡 Summary:
-- Avoid using aliases in HAVING.
-- Always use aggregate functions directly (COUNT, SUM, AVG).

-- ============================================
-- ⚡ FINAL TAKEAWAYS
-- ============================================

-- 1. ORDER BY should be used only once per query
-- 2. Use commas to sort by multiple columns
-- 3. Always use correct SQL keywords (ASC, DESC)
-- 4. Avoid aliases in HAVING → use aggregate functions directly
-- 5. Write portable SQL (works across different databases)

-- ============================================
-- END OF FILE
-- ============================================
