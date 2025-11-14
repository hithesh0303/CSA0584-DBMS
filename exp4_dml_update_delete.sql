-- 1. Select database
USE lab_db;
-- 2. Create table for DML operations
-- =========================================================
CREATE TABLE employees_dml (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    salary INT
);

-- Check structure
DESCRIBE employees_dml;
-- 3. INSERT sample data
-- =========================================================
INSERT INTO employees_dml (name, department, salary)
VALUES
('Alice Kumar', 'IT', 45000),
('Ravi Singh', 'HR', 38000),
('Priya Sharma', 'Finance', 52000),
('Karan Das', 'IT', 40000);

-- View initial data
SELECT * FROM employees_dml;
-- 4. UPDATE Command
-- =========================================================

-- Increase salary for IT department employees
UPDATE employees_dml
SET salary = salary + 5000
WHERE department = 'IT';

-- Update a specific employee
UPDATE employees_dml
SET department = 'Admin', salary = 42000
WHERE emp_id = 4;

-- View updated data
SELECT * FROM employees_dml;
-- 5. DELETE Command
-- =========================================================

-- Delete employees with salary less than 40000
DELETE FROM employees_dml
WHERE salary < 40000;

-- Delete a specific employee
DELETE FROM employees_dml
WHERE emp_id = 2;

-- View data after deletions
SELECT * FROM employees_dml;

-- End of Experiment 4
-- =========================================================
