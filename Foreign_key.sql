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
  ('Ak', 'Sales', 700000, 2),
  ('Jk', 'Contractor', 900000, 1),
  ('Akshaya', 'Contracting', 200000, 3);
  
SELECT * FROM employee;

ALTER TABLE employee
DROP FOREIGN KEY FK_branchId;

SELECT * FROM employee;
SELECT * FROM branch;


