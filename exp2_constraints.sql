-- 1. Select database
USE lab_db;

-- 2. Create parent table (Departments)
--    Demonstrates: PRIMARY KEY, UNIQUE, NOT NULL
-- =========================================================

CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL UNIQUE,   -- UNIQUE + NOT NULL
    location VARCHAR(100) DEFAULT 'Main Campus' -- DEFAULT
);

-- Check structure
DESCRIBE departments;

-- =========================================================
-- 3. Create child table (Employees)
--    Demonstrates: PRIMARY KEY, FOREIGN KEY,
--                  CHECK, NOT NULL, DEFAULT, UNIQUE
-- =========================================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,                -- NOT NULL
    email VARCHAR(150) UNIQUE,                 -- UNIQUE
    salary DECIMAL(10,2) DEFAULT 30000,        -- DEFAULT
    age INT CHECK (age >= 18),                 -- CHECK
    dept_id INT,                               -- Foreign key reference
    join_date DATE NOT NULL,                   -- NOT NULL

    CONSTRAINT fk_dept 
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Check structure
DESCRIBE employees;

-- =========================================================
-- 4. Insert sample data
-- =========================================================

-- Insert into departments table
INSERT INTO departments (dept_name, location)
VALUES 
('Computer Science', 'Block A'),
('Electronics', 'Block B');

-- Insert employees data
INSERT INTO employees (name, email, salary, age, dept_id, join_date)
VALUES
('Alice Kumar', 'alice@example.com', 45000, 22, 1, '2024-06-01'),
('Ravi Singh', 'ravi@example.com', 38000, 23, 2, '2024-07-10');

-- View tables
SELECT * FROM departments;
SELECT * FROM employees;

-- =========================================================
-- 5. Test CHECK constraint (should fail)
