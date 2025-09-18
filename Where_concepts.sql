# Where concepts:
/* 
	The WHERE clause in MySQL is used to filter records that meet a specific condition. 
	It is commonly used in SELECT, UPDATE, DELETE, and INSERT INTO ... SELECT statements.
*/

CREATE DATABASE logicsecond;

DROP DATABASE logicsecond;

USE logicsecond;

CREATE TABLE employee(
	emp_id INT PRIMARY KEY,
    e_name VARCHAR(30),
    job_desc VARCHAR(30),
    salary INT
);

SHOW TABLES

INSERT INTO employee (emp_id, e_name, job_desc, salary) VALUES
  (1, 'Akash', 'IT', '100000'),
  (2, 'Arjun', 'Manager', '300000'),
  (3, 'Bala', 'Admin', '500000'),
  (4, 'Ak', 'Sales', '700000'),
  (5, 'Jk', 'Contractor', '900000'),
  (6, 'Akshaya', 'Contracting', '200000');

INSERT IGNORE INTO employee (emp_id, e_name, job_desc, salary) VALUES
  (1, 'Akash', 'IT', '100000'),
  (2, 'Arjun', 'Manager', '300000'),
  (3, 'Bala', 'Admin', '500000'),
  (4, 'Ak', 'Sales', '700000'),
  (5, 'Jk', 'Contractor', '900000'),
  (6, 'Akshaya', 'Contracting', '200000');
  
DROP TABLE employee

SELECT * FROM employee
WHERE e_name="Akash";

SELECT emp_id, e_name FROM employee
WHERE e_name<>"Akash";

SELECT * FROM employee
WHERE salary>200000;

SELECT * FROM employee
WHERE job_desc = "Admin" OR job_desc = "Sales";

SELECT * FROM employee
WHERE job_desc IN ("Admin", "Sales");

SELECT * FROM employee
WHERE job_desc NOT IN ("IT", "Manager");

SELECT * FROM employee
WHERE salary BETWEEN 300000 AND 700000;

SELECT * FROM employee
LIMIT 3;

--  LIKE
--  WILDCARDS (% = ZERO OR MORE CHARACTERS) and (_ = ONE CHARACTER)

SELECT * FROM employee
WHERE e_name LIKE 'A%';

SELECT * FROM employee
WHERE e_name NOT LIKE 'A%';

SELECT * FROM employee
WHERE e_name LIKE 'A%A';

SELECT * FROM employee
WHERE e_name LIKE '%i%';

SELECT * FROM employee
WHERE e_name LIKE '__s%';

UPDATE employee
SET job_desc = 'ANALYST'
WHERE emp_id >= 1;

UPDATE employee
SET job_desc = 'ENGINEER'
WHERE emp_id >= 1;

DELETE FROM employee
WHERE emp_id=6;

