-- 1. Select the database
USE lab_db;

-- 2. Create sample table for SELECT operations
-- =========================================================
CREATE TABLE students_select (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(100),
    city VARCHAR(100)
);

-- Insert sample data
INSERT INTO students_select (name, course, city) VALUES
('Alice Kumar', 'Computer Science', 'Chennai'),
('Ravi Singh', 'Electronics', 'Hyderabad'),
('Priya Sharma', 'Computer Science', 'Chennai'),
('Karan Das', 'Mechanical', 'Mumbai'),
('Anita Nair', 'IT', 'Chennai'),
('Ajay Kumar', 'Electronics', 'Delhi'),
('Aarav Nanda', 'IT', 'Chennai');

-- View data
SELECT * FROM students_select;
-- 3. SELECT with WHERE Clause
-- =========================================================

-- Students from Chennai
SELECT * FROM students_select
WHERE city = 'Chennai';

-- Students in Computer Science course
SELECT * FROM students_select
WHERE course = 'Computer Science';

-- Students NOT from Chennai
SELECT * FROM students_select
WHERE city <> 'Chennai';

-- 4. Pattern Matching using LIKE
-- =========================================================

-- Names starting with 'A'
SELECT * FROM students_select
WHERE name LIKE 'A%';

-- Names ending with 'r'
SELECT * FROM students_select
WHERE name LIKE '%r';

-- Names containing 'ar'
SELECT * FROM students_select
WHERE name LIKE '%ar%';

-- Names with second letter as 'a' (e.g., "Ravi", "Karan")
SELECT * FROM students_select
WHERE name LIKE '_a%';

-- =========================================================
-- End of Experiment 7
-- =========================================================
