-- ============================================
-- 🔗 EXCEPT PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Students_A
-- Columns:
-- student_id, name

-- 🗂️ TABLE: Students_B
-- Columns:
-- student_id, name

-- ============================================
-- 1. Retrieve student names present in Students_A but not in Students_B.
SELECT
name
FROM Students_A
EXCEPT
SELECT
name
FROM Students_B;

-- ============================================
-- 2. Get student names present in Students_B but not in Students_A.
SELECT
name
FROM Students_B
EXCEPT
SELECT
name
FROM Students_A;

-- ============================================
-- 3. Retrieve student IDs present in Students_A but not in Students_B.
SELECT
student_id
FROM Students_A
EXCEPT
SELECT
student_id
FROM Students_B;

-- ============================================
-- 4. Get student names from Students_A but not in Students_B, sorted descending.
SELECT
name
FROM Students_A
EXCEPT
SELECT
name
FROM Students_B
ORDER BY name DESC;

-- ============================================
-- 5. Retrieve student names from Students_A but not in Students_B, excluding 'Neha'.
SELECT
name
FROM Students_A
WHERE name <> 'Neha'
EXCEPT
SELECT
name
FROM Students_B;

-- ============================================
-- END OF FILE
-- ============================================
