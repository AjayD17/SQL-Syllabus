SHOW DATABASES

CREATE DATABASE operating;

DROP DATABASE operating;

USE operating;

CREATE TABLE operating(
	emp_id INT PRIMARY KEY,
    e_name VARCHAR(30),
    job_desc VARCHAR(40),
    salary INT
)

INSERT INTO operating (emp_id, e_name, job_desc, salary) VALUES
  (1, 'Akash', 'IT', '100000'),
  (2, 'Arjun', 'Manager', '300000'),
  (3, 'Bala', 'Admin', '500000'),
  (4, 'Ak', 'Sales', '700000'),
  (5, 'Jk', 'Contractor', '900000'),
  (6, 'Akshaya', 'Contracting', '200000');

SELECT * FROM operating

# Numbers_operators:
SELECT COUNT(*) FROM operating

SELECT COUNT(*) total
FROM operating;

SELECT COUNT(*) no_of_managers
FROM operating
WHERE job_desc = "Manager";

SELECT AVG(salary) FROM operating
WHERE job_desc = "Admin";

SELECT SUM(salary) FROM operating
WHERE job_desc = "Sales" OR job_desc = "Admin";

SELECT MAX(salary) FROM operating

SELECT MIN(salary) FROM operating

# Strings operators:

SELECT UCASE(e_name), salary FROM operating

SELECT LCASE(e_name), salary FROM operating

SELECT e_name, CHAR_LENGTH(e_name) char_count FROM operating

SELECT e_name, CONCAT('Rs.',salary) FROM operating

SELECT e_name, CONCAT('Rs.',FORMAT(salary,0)) salary FROM operating

SELECT e_name, LEFT(job_desc, 3) FROM operating

