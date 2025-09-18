CREATE DATABASE dateconcepts;

DROP DATABASE dateconcepts;

USE dateconcepts;

CREATE TABLE dateconcepts(
	emp_id INT PRIMARY KEY,
    e_name VARCHAR(30),
    job_desc VARCHAR(40),
    salary INT
)

INSERT INTO dateconcepts(emp_id, e_name, job_desc, salary) VALUES
  (1, 'Akash', 'IT', '100000'),
  (2, 'Arjun', 'Manager', '300000'),
  (3, 'Bala', 'Admin', '500000'),
  (4, 'Ak', 'Sales', '700000'),
  (5, 'Jk', 'Contractor', '900000'),
  (6, 'Akshaya', 'Contracting', '200000');
  
SELECT * FROM dateconcepts;
  
ALTER TABLE dateconcepts ADD COLUMN Hire_date DATE;
  
SELECT * FROM dateconcepts;
  
UPDATE dateconcepts
SET Hire_date = '2014-07-05'
WHERE emp_id >= 1; -- or some valid key column

SELECT NOW();

SELECT DATE(NOW());

SELECT CURDATE();

SELECT DATE_FORMAT(CURDATE(), "%d/%m/%Y") AS date;

SELECT DATEDIFF(CURDATE(), "2025/04/08") AS days;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 DAY) AS 'after one week';



