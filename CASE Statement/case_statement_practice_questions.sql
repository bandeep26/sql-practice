-- ============================================
-- 🔗 CASE STATEMENT PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Employees
-- Columns:
-- emp_id, employee_name, salary,
-- department, department_code, bonus

-- 🗂️ TABLE: Orders
-- Columns:
-- order_id, amount, status_code, order_year

-- 🗂️ TABLE: Customers
-- Columns:
-- customer_id, customer_name, email

-- ============================================
-- 1. Categorize employees based on salary levels.
SELECT
CASE
    WHEN salary < 40000 THEN 'Low Salary'
    WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium Salary'
    WHEN salary > 70000 THEN 'High Salary'
    ELSE 'N/A'
END
FROM Employees;

-- ============================================
-- 2. Categorize orders based on order amount.
SELECT
CASE
    WHEN amount < 700 THEN 'Small Order'
    WHEN amount BETWEEN 700 AND 1500 THEN 'Medium Order'
    WHEN amount > 1500 THEN 'Large Order'
    ELSE 'N.A'
END AS Order_Category
FROM Orders;

-- ============================================
-- 3. Map department codes into full department names.
SELECT
CASE department_code
    WHEN 'HR' THEN 'Human Resources'
    WHEN 'IT' THEN 'Information Technology'
    WHEN 'FN' THEN 'Finance'
    ELSE 'Marketing'
END AS department_fullname
FROM Employees;

-- ============================================
-- 4. Convert status codes into readable order statuses.
SELECT
CASE status_code
    WHEN 'P' THEN 'Pending'
    WHEN 'S' THEN 'Shipped'
    WHEN 'D' THEN 'Delivered'
    ELSE 'Cancelled'
END AS status
FROM Orders;

-- ============================================
-- 5. Display actual bonus if available, otherwise show 'No Bonus'.
SELECT
CASE
    WHEN bonus IS NOT NULL THEN CAST(bonus AS VARCHAR)
    ELSE 'No bonus'
END AS Bonus_Sorted
FROM Employees;

-- ============================================
-- 6. Display actual email if available, otherwise show 'Email Missing'.
SELECT
CASE
    WHEN email IS NOT NULL THEN email
    ELSE 'Email Missing'
END AS Email_Sorted
FROM Customers;

-- ============================================
-- 7. Find total sales for 2023 and 2024 in separate columns.
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

-- ============================================
-- 8. Find total IT salary and total HR salary in separate columns.
SELECT
SUM(
    CASE
        WHEN department = 'IT' THEN salary
        ELSE 0
    END
) AS Salary_IT,

SUM(
    CASE
        WHEN department = 'HR' THEN salary
        ELSE 0
    END
) AS Salary_HR

FROM Employees;

-- ============================================
-- END OF FILE
-- ============================================
