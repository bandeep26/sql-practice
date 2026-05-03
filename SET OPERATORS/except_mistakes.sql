-- ============================================
-- 📌 SQL MISTAKES FILE (EXCEPT)
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
-- ❌ Wrong direction of EXCEPT
SELECT name FROM Students_B
EXCEPT
SELECT name FROM Students_A;

-- ✅ Correct
SELECT name FROM Students_A
EXCEPT
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 2
-- ❌ Using same table twice
SELECT name FROM Students_A
EXCEPT
SELECT name FROM Students_A;

-- ✅ Correct
SELECT name FROM Students_A
EXCEPT
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 3
-- ❌ Applying ORDER BY before EXCEPT
SELECT name FROM Students_A
ORDER BY name DESC
EXCEPT
SELECT name FROM Students_B;

-- ✅ Correct
SELECT name FROM Students_A
EXCEPT
SELECT name FROM Students_B
ORDER BY name DESC;

--------------------------------------------------

-- Mistake 4
-- ❌ Different number of columns
SELECT name FROM Students_A
EXCEPT
SELECT student_id, name FROM Students_B;

-- ✅ Correct
SELECT name FROM Students_A
EXCEPT
SELECT name FROM Students_B;

--------------------------------------------------

-- Mistake 5
-- ❌ Incorrect filtering logic
WHERE name = 'Neha';

-- ✅ Correct
WHERE name <> 'Neha';

--------------------------------------------------

-- ============================================
-- 📊 SUMMARY
-- ============================================

-- Focus Areas:
-- 1. Correct direction of EXCEPT
-- 2. Matching column structure
-- 3. Proper ORDER BY placement
-- 4. Correct filtering conditions
-- 5. Avoid duplicate table usage

-- ============================================
-- END OF FILE
-- ============================================
