
-- 1. Select the database
USE lab_db;

-- =========================================================
-- 2. Create sample table for demonstration
-- =========================================================
CREATE TABLE marks_data (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);

-- Insert sample data
INSERT INTO marks_data (name, subject, marks) VALUES
('Alice Kumar', 'Math', 88),
('Ravi Singh', 'Math', 72),
('Priya Sharma', 'Science', 95),
('Karan Das', 'Science', 67),
('Anita Nair', 'English', 78),
('Ajay Kumar', 'Math', 91),
('Aarav Nanda', 'English', 84),
('Divya Patel', 'Science', 56);

-- View data
SELECT * FROM marks_data;

-- =========================================================
-- 3. SELECT using BETWEEN
-- (Select range values)
-- =========================================================

-- Students scoring between 70 and 90
SELECT * FROM marks_data
WHERE marks BETWEEN 70 AND 90;

-- Students scoring NOT BETWEEN 70 and 90
SELECT * FROM marks_data
WHERE marks NOT BETWEEN 70 AND 90;

-- =========================================================
-- 4. SELECT using IN
-- =========================================================

-- Students from subjects Math or English
SELECT * FROM marks_data
WHERE subject IN ('Math', 'English');

-- Students NOT from Math or Science
SELECT * FROM marks_data
WHERE subject NOT IN ('Math', 'Science');
-- 5. Aggregate Functions
-- Functions: COUNT(), SUM(), AVG(), MAX(), MIN()
-- =========================================================

-- Count total rows
SELECT COUNT(*) AS total_students FROM marks_data;

-- Maximum marks
SELECT MAX(marks) AS highest_marks FROM marks_data;

-- Minimum marks
SELECT MIN(marks) AS lowest_marks FROM marks_data;

-- Average marks
SELECT AVG(marks) AS average_marks FROM marks_data;

-- Sum of all marks
SELECT SUM(marks) AS total_marks FROM marks_data;

-- Aggregate with GROUP BY (per subject)
SELECT subject, AVG(marks) AS avg_marks
FROM marks_data
GROUP BY subject;

-- =========================================================
-- End of Experiment 8
-- =========================================================
