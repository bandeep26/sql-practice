-- ============================================
-- 🔗 UNION ALL PRACTICE (QUESTIONS + ANSWERS)
-- ============================================

-- 🗂️ TABLE: Students_A
-- Columns:
-- student_id, name

-- 🗂️ TABLE: Students_B
-- Columns:
-- student_id, name

-- ============================================
-- 1. Retrieve all student names from both tables including duplicates.
SELECT
name
FROM Students_A
UNION ALL
SELECT
name
FROM Students_B;

-- ============================================
-- 2. Get all student IDs from both tables sorted in descending order.
SELECT
student_id
FROM Students_A
UNION ALL
SELECT
student_id
FROM Students_B
ORDER BY student_id DESC;

-- ============================================
-- 3. Retrieve names starting with 'A' from both tables including duplicates.
SELECT
name
FROM Students_A
WHERE name LIKE 'A%'
UNION ALL
SELECT
name
FROM Students_B
WHERE name LIKE 'A%';

-- ============================================
-- 4. Get all names excluding 'Raj' from both tables including duplicates.
SELECT
name
FROM Students_A
WHERE name <> 'Raj'
UNION ALL
SELECT
name
FROM Students_B
WHERE name <> 'Raj';

-- ============================================
-- 5. Retrieve student IDs that appear more than once across both tables.
SELECT
student_id
FROM (
    SELECT student_id FROM Students_A
    UNION ALL
    SELECT student_id FROM Students_B
) AS combined
GROUP BY student_id
HAVING COUNT(student_id) > 1;

-- ============================================
-- END OF FILE
-- ============================================
