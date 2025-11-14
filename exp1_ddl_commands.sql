-- Experiment 1: DDL Commands in MySQL
-- Commands: CREATE, ALTER, TRUNCATE, DROP
-- 1. Select the database
USE lab_db;

-- 2. CREATE TABLE
-- =========================================================
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    email VARCHAR(150) UNIQUE
);

-- Check structure
DESCRIBE students;

-- 3. ALTER TABLE
-- =========================================================

-- Add a new column
ALTER TABLE students ADD COLUMN phone VARCHAR(15);

-- Rename the column
ALTER TABLE students CHANGE COLUMN phone phone_no VARCHAR(20);

-- Check structure after ALTER
DESCRIBE students;

-- Optional: insert sample data
-- =========================================================
INSERT INTO students (name, dob, email, phone_no)
VALUES 
('Alice Kumar', '2002-05-12', 'alice@example.com', '9876543210'),
('Ravi Singh', '2001-11-20', 'ravi@example.com', '9123456780');

-- View data
SELECT * FROM students;

-- 4. TRUNCATE TABLE
-- =========================================================
TRUNCATE TABLE students;

-- Verify empty table
SELECT * FROM students;

-- 5. DROP TABLE
-- =========================================================
DROP TABLE students;

-- Verify drop
SHOW TABLES;
