-- ============================================
-- 🔗 UNION PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Students_A
-- Columns:
-- student_id, name

-- 🗂️ TABLE: Students_B
-- Columns:
-- student_id, name

-- ============================================
-- 1. Retrieve all unique student names from both tables.
SELECT
name
FROM Students_A
UNION
SELECT
name
FROM Students_B;

-- ============================================
-- 2. Get all unique student IDs from both tables.
SELECT
student_id
FROM Students_A
UNION
SELECT
student_id
FROM Students_B;

-- ============================================
-- 3. Retrieve all unique names sorted in ascending order.
SELECT
name
FROM Students_A
UNION
SELECT
name
FROM Students_B
ORDER BY name ASC;

-- ============================================
-- 4. Get unique student names starting with 'P'.
SELECT
name
FROM Students_A
WHERE name LIKE 'P%'
UNION
SELECT
name
FROM Students_B
WHERE name LIKE 'P%';

-- ============================================
-- 5. Retrieve unique student names excluding 'Raj'.
SELECT
name
FROM Students_A
WHERE name <> 'Raj'
UNION
SELECT
name
FROM Students_B
WHERE name <> 'Raj';

-- ============================================
-- END OF FILE
-- ============================================
