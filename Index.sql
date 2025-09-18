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

SELECT * FROM branch;
SELECT * FROM employee;

ALTER TABLE employee
DROP FOREIGN KEY FK_branchId;

SELECT * FROM employee;
SELECT * FROM branch;

SHOW INDEX FROM employee;

CREATE INDEX name_index ON employee(e_name);

ALTER TABLE employee
DROP INDEX name_index;

ALTER TABLE employee
ADD INDEX(e_name);