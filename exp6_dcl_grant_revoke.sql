-- 1. Select database
USE lab_db;
-- 2. Create a new user for DCL demonstration
-- (Skip if the user already exists)
-- =========================================================

CREATE USER IF NOT EXISTS 'lab_user'@'localhost' IDENTIFIED BY 'lab123';

-- View existing users
SELECT user, host FROM mysql.user;
-- 3. GRANT Command
-- Give SELECT & INSERT permission on lab_db to lab_user
-- =========================================================

GRANT SELECT, INSERT ON lab_db.* TO 'lab_user'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

-- Check privileges
SHOW GRANTS FOR 'lab_user'@'localhost';
-- 4. REVOKE Command
-- Remove INSERT privilege from lab_user
-- =========================================================

REVOKE INSERT ON lab_db.* FROM 'lab_user'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

-- Check privileges again
SHOW GRANTS FOR 'lab_user'@'localhost';

-- =========================================================
-- End of Experiment 6
-- =========================================================
