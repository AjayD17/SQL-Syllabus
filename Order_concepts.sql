CREATE DATABASE ordering;

DROP DATABASE ordering;

USE ordering;

CREATE TABLE ordering(
	emp_id INT PRIMARY KEY,
    e_name VARCHAR(30),
    job_desc VARCHAR(30),
    salary INT
);

SHOW TABLES

INSERT INTO ordering (emp_id, e_name, job_desc, salary) VALUES
  (1, 'Akash', 'IT', '100000'),
  (2, 'Arjun', 'Manager', '300000'),
  (3, 'Bala', 'Admin', '500000'),
  (4, 'Ak', 'Sales', '700000'),
  (5, 'Jk', 'Contractor', '900000'),
  (6, 'Akshaya', 'Contracting', '200000');
  
SELECT * FROM ordering
ORDER BY e_name;

SELECT * FROM ordering
ORDER BY salary;

SELECT * FROM ordering
ORDER BY salary DESC;

SELECT * FROM ordering
ORDER BY salary ASC;

SELECT * FROM ordering
ORDER BY salary, e_name;

SELECT * FROM ordering
WHERE job_desc="Manager"
ORDER BY salary;

SELECT * FROM ordering
ORDER BY job_desc;

# SWITCH-CASE:

SELECT * FROM ordering
ORDER BY (CASE job_desc
WHEN 'Manager' THEN 1
WHEN 'Admin' THEN 2
WHEN 'Sales' THEN 3
WHEN 'Contractor' THEN 4
WHEN 'Contracting' THEN 5
WHEN 'IT' THEN 6
ELSE 100 END
);





