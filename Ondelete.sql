-- STEP 1: Create and use the database
CREATE DATABASE Foreign_key;
USE Foreign_key;
DROP DATABASE Foreign_key;

-- STEP 2: Create the `branch` table
CREATE TABLE branch (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    br_name VARCHAR(30) NOT NULL,
    addr VARCHAR(30), 
    manager_id VARCHAR(30)
);

-- STEP 3: Insert data into `branch`
INSERT INTO branch (br_name, addr, manager_id) VALUES 
  ('Chennai', 'Koyambedu', 3),
  ('Coimbatore', 'Kallanai', 1),
  ('Mumbai', 'Jolarpettai', 2),
  ('Delhi', 'Anna Nagar', 4);

-- STEP 4: View inserted branch data
SELECT * FROM branch;

-- STEP 5: Create `employee` table with ON DELETE CASCADE (Example 1)
CREATE TABLE employee_cascade (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    e_name VARCHAR(30) NOT NULL,
    job_desc VARCHAR(20),
    salary INT,
    branch_id INT,
    CONSTRAINT FK_Cascade FOREIGN KEY (branch_id)
        REFERENCES branch(branch_id)
        ON DELETE CASCADE
);

-- STEP 6: Insert employees (some linked to branches)
INSERT INTO employee_cascade (e_name, job_desc, salary, branch_id) VALUES
  ('Akash', 'IT', 100000, 2),
  ('Arjun', 'Manager', 300000, 3),
  ('Bala', 'Admin', 500000, 1);

-- STEP 7: Test CASCADE: Delete branch_id=2 (Coimbatore) → Akash will be deleted
DELETE FROM branch WHERE branch_id = 2;

-- STEP 8: Check data after CASCADE delete
SELECT * FROM employee_cascade;
SELECT * FROM branch;

DROP TABLE branch;
DROP TABLE employee_cascade;
------------------------------------------------------------
DROP TABLE employee_setnull;
-- STEP 9: Create `employee` table with ON DELETE SET NULL (Example 2)
CREATE TABLE employee_setnull (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    e_name VARCHAR(30) NOT NULL,
    job_desc VARCHAR(20),
    salary INT,
    branch_id INT,
    CONSTRAINT FK_SetNull FOREIGN KEY (branch_id)
        REFERENCES branch(branch_id)
        ON DELETE SET NULL
);

-- STEP 10: Insert employees (including NULL branch)
INSERT INTO employee_setnull (e_name, job_desc, salary, branch_id) VALUES
  ('Akash', 'IT', 100000, 2),
  ('Arjun', 'Manager', 300000, 3),
  ('Bala', 'Admin', 500000, 1),
  ('Xyz', 'Intern', 50000, NULL);

-- STEP 11: Test SET NULL: Delete branch_id=3 (Mumbai) → Arjun’s branch_id becomes NULL
DELETE FROM branch WHERE branch_id = 3;

-- STEP 12: Check data after SET NULL
SELECT * FROM employee_setnull;
SELECT * FROM branch;
