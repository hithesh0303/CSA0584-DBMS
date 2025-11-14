-- 1. Select database
USE lab_db;
-- 2. Create a table for TCL demonstration
-- =========================================================
CREATE TABLE accounts_tcl (
    acc_id INT PRIMARY KEY AUTO_INCREMENT,
    acc_name VARCHAR(100),
    balance INT
);

-- Insert initial data
INSERT INTO accounts_tcl (acc_name, balance) VALUES
('Alice', 5000),
('Ravi', 7000),
('Priya', 9000);

SELECT * FROM accounts_tcl;
-- 3. START TRANSACTION
-- =========================================================
START TRANSACTION;

-- Update balance of Alice
UPDATE accounts_tcl 
SET balance = balance - 1000
WHERE acc_name = 'Alice';

-- Create a SAVEPOINT
SAVEPOINT sp1;

-- Update balance of Ravi
UPDATE accounts_tcl
SET balance = balance - 2000
WHERE acc_name = 'Ravi';

-- View current state
SELECT * FROM accounts_tcl;
-- 4. ROLLBACK to SAVEPOINT
-- Revert Ravi's update only
-- =========================================================
ROLLBACK TO sp1;

-- Check data after rollback to savepoint
SELECT * FROM accounts_tcl;

-- =========================================================
-- 5. COMMIT
-- Save the transaction permanently
-- =========================================================
COMMIT;

-- Final table state after commit
SELECT * FROM accounts_tcl;

-- =========================================================
-- End of Experiment 5
-- =========================================================
