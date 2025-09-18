CREATE DATABASE groupconcepts;

DROP DATABASE groupconcepts;

USE groupconcepts;

CREATE TABLE groupconcepts(
	emp_id INT PRIMARY KEY,
    e_name VARCHAR(30),
    job_desc VARCHAR(40),
    salary INT
)

INSERT INTO groupconcepts(emp_id, e_name, job_desc, salary) VALUES
  (1, 'Akash', 'IT', '100000'),
  (2, 'Arjun', 'Manager', '300000'),
  (3, 'Bala', 'Admin', '500000'),
  (4, 'Ak', 'Sales', '700000'),
  (5, 'Jk', 'Contractor', '900000'),
  (6, 'Akshaya', 'Contracting', '200000');
  
SELECT * FROM groupconcepts
ORDER BY job_desc;

SELECT job_desc, avg(salary) FROM groupconcepts
GROUP BY job_desc;

SELECT job_desc, COUNT(emp_id) FROM groupconcepts
GROUP BY job_desc;

SELECT job_desc, COUNT(emp_id) AS emp_count
FROM groupconcepts
GROUP BY job_desc
HAVING COUNT(emp_id) = 1
ORDER BY job_desc;

ALTER TABLE groupconcepts ADD COLUMN Extra;

