-- 1. Select database
USE lab_db;
-- 2. Create table for DML operations
-- =========================================================
CREATE TABLE students_dml (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(100),
    marks INT
);

-- Check structure
DESCRIBE students_dml;

-- 3. INSERT Command
-- Insert multiple rows
-- =========================================================
INSERT INTO students_dml (name, course, marks)
VALUES 
('Alice Kumar', 'Computer Science', 85),
('Ravi Singh', 'Electronics', 78),
('Priya Sharma', 'Computer Science', 92),
('Karan Das', 'Mechanical', 67);

-- 4. SELECT Command
-- Retrieve all data
-- =========================================================
SELECT * FROM students_dml;

-- Select specific columns
SELECT name, marks FROM students_dml;

-- Select with condition (WHERE)
SELECT * FROM students_dml WHERE marks > 80;

-- Select with sorting (ORDER BY)
SELECT * FROM students_dml ORDER BY marks DESC;

-- =========================================================
-- End of Experiment 3
-- =========================================================
