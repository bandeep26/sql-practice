-- ============================================
-- 📌 SQL MISTAKES FILE (UNION)
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
-- ❌ Using same table twice
SELECT name FROM Students_A
UNION
SELECT name FROM Students_A;

-- ✅ Correct
SELECT name FROM Students_A
UNION
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 2
-- ❌ Incorrect ORDER BY syntax
ORDER BY ASC;

-- ✅ Correct
ORDER BY name ASC;

--------------------------------------------------

-- Mistake 3
-- ❌ Using LIKE for exact match
WHERE name NOT LIKE 'Raj';

-- ✅ Correct
WHERE name <> 'Raj';

--------------------------------------------------

-- Mistake 4
-- ❌ Different number of columns
SELECT name FROM Students_A
UNION
SELECT student_id, name FROM Students_B;

-- ✅ Correct
SELECT name FROM Students_A
UNION
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 5
-- ❌ Applying ORDER BY before UNION
SELECT name FROM Students_A
ORDER BY name
UNION
SELECT name FROM Students_B;

-- ✅ Correct
SELECT name FROM Students_A
UNION
SELECT name FROM Students_B
ORDER BY name;

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Matching column structure
-- 2. Correct table usage
-- 3. Proper ORDER BY placement
-- 4. Correct filtering conditions
-- 5. Understanding duplicate removal

-- ============================================
-- END OF FILE
-- ============================================
