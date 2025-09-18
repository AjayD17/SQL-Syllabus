CREATE DATABASE Foreign_key

USE Foreign_key;

DROP DATABASE Foreign_key

CREATE TABLE branch(
	branch_id INT PRIMARY KEY AUTO_INCREMENT,
	br_name VARCHAR(30) NOT NULL,
    addr VARCHAR(30), 
    manager_id VARCHAR(30)
);

INSERT INTO branch(br_name, addr, manager_id) VALUES ("Chennai", "Koyambedu", 3);
INSERT INTO branch(br_name, addr, manager_id) VALUES ("Coimbatore", "Kallanai", 1);
INSERT INTO branch(br_name, addr, manager_id) VALUES ("Mumbai", "Jolarpettai", 2);
INSERT INTO branch(br_name, addr, manager_id) VALUES ("Delhi", "Anna Nagar", 4);

SELECT * FROM branch;
DROP TABLE branch;

CREATE TABLE employee(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
    e_name VARCHAR(30) NOT NULL,
    job_desc VARCHAR(20),
    salary int,
    branch_id int,
    CONSTRAINT FK_branchId FOREIGN KEY(branch_id) references branch(branch_id)
);

INSERT INTO employee(e_name, job_desc, salary, branch_id) VALUES
  ('Akash', 'IT',  100000, 2),
  ('Arjun', 'Manager', 300000, 3),
  ('Bala', 'Admin', 500000, 1),
  ('Xyz', 'Intern', 50000, NULL);
  
SELECT * FROM employee;

ALTER TABLE employee
DROP FOREIGN KEY FK_branchId;

SELECT * FROM employee;
SELECT * FROM branch;

SELECT * FROM employee
WHERE branch_id=(SELECT branch_id FROM branch
WHERE br_name="Chennai");

SELECT * FROM employee
WHERE branch_id=(SELECT branch_id FROM branch
WHERE br_name="Coimbatore");

SELECT * FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

SELECT branch_id, br_name
FROM branch
WHERE EXISTS (
SELECT * FROM employee
WHERE job_desc = "ADMIN" AND branch.branch_id=employee.branch_id);

SELECT branch_id, br_name
FROM branch
WHERE EXISTS (
SELECT * FROM employee
WHERE job_desc = "MANAGER" AND branch.branch_id=employee.branch_id);

SELECT * FROM branch
WHERE branch_id = ANY(
SELECT branch_id FROM employee
WHERE salary>200000);

SELECT * FROM branch
WHERE branch_id <> ALL(         -- <> This is a not equal....
SELECT branch_id FROM branch
WHERE br_name IN ("Chennai", "Coimbatore"));
