-- ============================================
-- ?? SQL MISTAKES FILE (DML)
-- ============================================

-- ??? TABLE: Employees

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50)
);

-- ============================================
-- ? COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ? Missing WHERE in UPDATE (updates entire table)
UPDATE Employees
SET salary = 80000;

-- ? Correct
UPDATE Employees
SET salary = 80000
WHERE emp_id = 1;

--------------------------------------------------

-- Mistake 2
-- ? Missing WHERE in DELETE (deletes all records)
DELETE FROM Employees;

-- ? Correct
DELETE FROM Employees
WHERE emp_id = 2;

--------------------------------------------------

-- Mistake 3
-- ? Using = instead of IN for multiple values
SELECT * FROM Employees
WHERE department = ('IT', 'HR');

-- ? Correct
SELECT * FROM Employees
WHERE department IN ('IT', 'HR');

--------------------------------------------------

-- Mistake 4
-- ? Wrong LIKE pattern
SELECT * FROM Employees
WHERE name LIKE 'A';

-- ? Correct
SELECT * FROM Employees
WHERE name LIKE 'A%';

--------------------------------------------------

-- Mistake 5
-- ? Forgetting quotes for string values
SELECT * FROM Employees
WHERE city = Delhi;

-- ? Correct
SELECT * FROM Employees
WHERE city = 'Delhi';

--------------------------------------------------

-- Mistake 6
-- ? Confusing AND / OR logic
SELECT * FROM Employees
WHERE department = 'IT' OR city = 'Mumbai';

-- ?? Issue:
-- May return unintended rows

-- ? Correct (if both conditions needed)
SELECT * FROM Employees
WHERE department = 'IT' AND city = 'Mumbai';

--------------------------------------------------

-- Mistake 7
-- ? Inserting values in wrong order
INSERT INTO Employees VALUES ('John', 1, 'HR', 50000, 'Delhi');

-- ? Correct
INSERT INTO Employees VALUES (1, 'John', 'HR', 50000, 'Delhi');

--------------------------------------------------

-- Mistake 8
-- ? Not specifying columns when some values are missing
INSERT INTO Employees VALUES (5, 'Sam');

-- ? Correct
INSERT INTO Employees (emp_id, name)
VALUES (5, 'Sam');

--------------------------------------------------

-- ============================================
-- ?? SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Always use WHERE in UPDATE and DELETE
-- 2. Correct use of LIKE patterns
-- 3. Proper logical conditions (AND vs OR)
-- 4. Correct INSERT syntax and column order
-- 5. Always use quotes for strings

-- ============================================
-- END OF FILE
-- ============================================