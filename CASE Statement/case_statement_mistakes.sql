-- ============================================
-- 📌 SQL MISTAKES FILE (CASE STATEMENT)
-- ============================================

-- 🗂️ TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
employee_name VARCHAR(50),
salary DECIMAL(10,2),
department VARCHAR(50),
department_code VARCHAR(10),
bonus DECIMAL(10,2)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Wrong salary range
SELECT
CASE
    WHEN salary < 40000 THEN 'Low Salary'
    WHEN salary BETWEEN 40000 AND 7000 THEN 'Medium Salary'
    WHEN salary > 70000 THEN 'High Salary'
END
FROM Employees;

-- ✅ Correct
SELECT
CASE
    WHEN salary < 40000 THEN 'Low Salary'
    WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium Salary'
    WHEN salary > 70000 THEN 'High Salary'
    ELSE 'N/A'
END
FROM Employees;

--------------------------------------------------

-- Mistake 2
-- ❌ Missing quotes around string values
SELECT
CASE department_code
    WHEN HR THEN 'Human Resources'
    WHEN IT THEN 'Information Technology'
    ELSE 'Marketing'
END
FROM Employees;

-- ✅ Correct
SELECT
CASE department_code
    WHEN 'HR' THEN 'Human Resources'
    WHEN 'IT' THEN 'Information Technology'
    ELSE 'Marketing'
END
FROM Employees;

--------------------------------------------------

-- Mistake 3
-- ❌ Wrong column used
SELECT
CASE department_code
    WHEN 'P' THEN 'Pending'
    WHEN 'S' THEN 'Shipped'
END
FROM Orders;

-- ✅ Correct
SELECT
CASE status_code
    WHEN 'P' THEN 'Pending'
    WHEN 'S' THEN 'Shipped'
END
FROM Orders;

--------------------------------------------------

-- Mistake 4
-- ❌ Mixing incompatible datatypes
SELECT
CASE
    WHEN bonus IS NOT NULL THEN bonus
    ELSE 'No Bonus'
END
FROM Employees;

-- ✅ Correct
SELECT
CASE
    WHEN bonus IS NOT NULL THEN CAST(bonus AS VARCHAR)
    ELSE 'No Bonus'
END
FROM Employees;

--------------------------------------------------

-- Mistake 5
-- ❌ Unnecessary GROUP BY with conditional aggregation
SELECT
SUM(
    CASE
        WHEN order_year = 2023 THEN amount
        ELSE 0
    END
) AS sales_2023,

SUM(
    CASE
        WHEN order_year = 2024 THEN amount
        ELSE 0
    END
) AS sales_2024

FROM Orders
GROUP BY sales_2023, sales_2024;

-- ✅ Correct
SELECT
SUM(
    CASE
        WHEN order_year = 2023 THEN amount
        ELSE 0
    END
) AS sales_2023,

SUM(
    CASE
        WHEN order_year = 2024 THEN amount
        ELSE 0
    END
) AS sales_2024

FROM Orders;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct CASE condition ranges
-- 2. Proper string quoting
-- 3. Correct column usage
-- 4. Datatype consistency in CASE
-- 5. Conditional aggregation logic
-- 6. Proper CASE formatting

-- ============================================
-- END OF FILE
-- ============================================
