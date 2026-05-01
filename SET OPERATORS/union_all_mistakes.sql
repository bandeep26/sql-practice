-- ============================================
-- 📌 SQL MISTAKES FILE (UNION ALL)
-- ============================================

-- 🗂️ TABLE: Students_A

CREATE TABLE Students_A (
student_id INT,
name VARCHAR(50)
);

-- 🗂️ TABLE: Students_B

CREATE TABLE Students_B (
student_id INT,
name VARCHAR(50)
);

-- ============================================
-- ❌ COMMON MISTAKES + CORRECTIONS
-- ============================================

-- Mistake 1
-- ❌ Using UNION instead of UNION ALL
SELECT name FROM Students_A
UNION
SELECT name FROM Students_B;

-- ✅ Correct
SELECT name FROM Students_A
UNION ALL
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 2
-- ❌ Expecting duplicates to be removed
-- UNION ALL keeps duplicates

-- ✅ Correct
-- Use UNION if duplicates should be removed

--------------------------------------------------

-- Mistake 3
-- ❌ Incorrect ORDER BY placement
SELECT student_id FROM Students_A
ORDER BY student_id DESC
UNION ALL
SELECT student_id FROM Students_B;

-- ✅ Correct
SELECT student_id FROM Students_A
UNION ALL
SELECT student_id FROM Students_B
ORDER BY student_id DESC;

--------------------------------------------------

-- Mistake 4
-- ❌ Different column count
SELECT name FROM Students_A
UNION ALL
SELECT student_id, name FROM Students_B;

-- ✅ Correct
SELECT name FROM Students_A
UNION ALL
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 5
-- ❌ Applying GROUP BY before combining
SELECT student_id
FROM Students_A
GROUP BY student_id
HAVING COUNT(student_id) > 1
UNION ALL
SELECT student_id
FROM Students_B
GROUP BY student_id
HAVING COUNT(student_id) > 1;

-- ✅ Correct
SELECT student_id
FROM (
    SELECT student_id FROM Students_A
    UNION ALL
    SELECT student_id FROM Students_B
) AS combined
GROUP BY student_id
HAVING COUNT(student_id) > 1;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Difference between UNION and UNION ALL
-- 2. Proper ORDER BY placement
-- 3. Matching column structure
-- 4. Handling duplicates correctly
-- 5. Aggregation after combining datasets

-- ============================================
-- END OF FILE
-- ============================================
