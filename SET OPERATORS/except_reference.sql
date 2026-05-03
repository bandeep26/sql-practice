-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (EXCEPT)
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
-- 📊 SUMMARY
-- ============================================

-- Total Questions Practiced: 5

-- Topics Covered:
-- EXCEPT basics
-- Directional difference (A - B, B - A)
-- Filtering with EXCEPT
-- ORDER BY with EXCEPT
-- Column-based exclusion logic

-- Key Learnings:
-- 1. EXCEPT returns rows from first query not present in second
-- 2. Order matters (A EXCEPT B ≠ B EXCEPT A)
-- 3. Duplicate rows are removed automatically
-- 4. Both queries must have same number of columns
-- 5. Filtering can be applied before EXCEPT

-- ============================================
-- END OF NOTES
-- ============================================
