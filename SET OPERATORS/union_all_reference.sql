-- ============================================
-- 📌 SQL PRACTICE QUESTIONS (UNION ALL)
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
-- UNION ALL basics
-- Handling duplicates
-- ORDER BY with UNION ALL
-- Filtering with UNION ALL
-- Aggregation after UNION ALL

-- Key Learnings:
-- 1. UNION ALL combines results without removing duplicates
-- 2. It is faster than UNION as no duplicate check is performed
-- 3. Both queries must have same number of columns
-- 4. ORDER BY is applied at the end
-- 5. Aggregation can be applied after combining datasets

-- ============================================
-- END OF NOTES
-- ============================================
