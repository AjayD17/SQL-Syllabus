-- This databases is a newly create..... 

CREATE DATABASE Constraints;

DROP DATABASE Constraints;

USE Constraints;

DROP DATABASE Constraints;

CREATE TABLE employee_constraints(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
    e_name VARCHAR(30) NOT NULL,
    job_desc VARCHAR(40) DEFAULT 'unassigned',
    salary INT,
    pan VARCHAR(10) UNIQUE,
    CHECK (salary>400000)
);

DROP TABLE employee_constraints;
INSERT INTO employee_constraints(e_name, salary) VALUES ("Ajay", 400000);
INSERT INTO employee_constraints(e_name, salary) VALUES ("Ajay", 700000);
INSERT INTO employee_constraints(e_name, salary) VALUES ("Ajay", 900000);

SELECT * FROM employee_constraints;

-- This databases is already created....
CREATE DATABASE Constrain;

USE Constrain;

CREATE TABLE workers_constraints(
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(10),
    job_desc VARCHAR(30),
    salary INT
);

INSERT INTO workers_constraints(emp_name, salary) VALUES ("Ajay", 400000);
INSERT INTO workers_constraints(emp_name, salary) VALUES ("Vijay", 500000);
INSERT INTO workers_constraints(emp_name, salary) VALUES ("Akash", 900000);

DROP TABLE workers_constraints;

SELECT * FROM workers_constraints

-- add not null constraints...
ALTER TABLE workers_constraints
MODIFY emp_name VARCHAR(10) DEFAULT "UNASSIGNED";

SHOW COLUMNS FROM workers_constraints;

-- drop not null constraints...
ALTER TABLE workers_constraints
MODIFY emp_name VARCHAR(10);