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

-- JOINS CONCEPTS:
SELECT employee.emp_id, employee.e_name, employee.job_desc, branch.br_name
FROM employee
INNER JOIN branch  -- INNER JOIN CONCEPTS: GIVE ALL THE JOINS DATAS...
ON employee.branch_id=branch.branch_id
ORDER BY employee.emp_id;

SELECT employee.emp_id, employee.e_name, employee.job_desc, branch.br_name
FROM employee
LEFT JOIN branch  -- LEFT JOIN CONCEPTS: Left datas == right datas...
ON employee.branch_id=branch.branch_id
ORDER BY employee.emp_id;

SELECT employee.emp_id, employee.e_name, employee.job_desc, branch.br_name
FROM employee
RIGHT JOIN branch  -- RIGHT JOIN CONCEPTS: Right datas == left datas...
ON employee.branch_id=branch.branch_id
ORDER BY employee.emp_id;

SELECT employee.emp_id, employee.e_name, employee.job_desc, branch.br_name
FROM employee
CROSS JOIN branch  -- CROSS JOIN CONCEPTS: One data == get the all datas...
ON employee.branch_id=branch.branch_id
ORDER BY employee.emp_id;

SELECT b.br_name, e.emp_id
FROM branch AS b
JOIN employee AS e
ON b.branch_id = e.branch_id
GROUP BY e.branch_id;

-- UNION & UNION ALL CONCEPTS:

-- 1. Create union1 table
CREATE TABLE union1 (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    br_name VARCHAR(30) NOT NULL,
    addr VARCHAR(30),
    manager_id VARCHAR(30)
);

-- 2. Insert into union1 (includes duplicate row)
INSERT INTO union1 (br_name, addr, manager_id) VALUES
  ('Chennai', 'Koyambedu', 3),
  ('Coimbatore', 'Kallanai', 1),
  ('Mumbai', 'Jolarpettai', 2),
  ('Delhi', 'Anna Nagar', 4),
  ('Delhi', 'Anna Nagar', 4);  -- duplicate row

-- 3. Create union2 table
CREATE TABLE union2 (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    br_name VARCHAR(30) NOT NULL,
    addr VARCHAR(30),
    manager_id VARCHAR(30)
);

-- 4. Insert into union2 (includes duplicate row)
INSERT INTO union2 (br_name, addr, manager_id) VALUES
  ('Kanyakumari', 'Koyambedu', 3),
  ('Trichy', 'Kallanai', 1),
  ('Thoothukudi', 'Jolarpettai', 2),
  ('Vellore', 'Anna Nagar', 4),
  ('Vellore', 'Anna Nagar', 4);  -- duplicate row

-- ✅ 5. Use UNION (removes duplicates)
SELECT br_name, addr, manager_id FROM union1
UNION
SELECT br_name, addr, manager_id FROM union2;

-- ✅ 6. Use UNION ALL (keeps duplicates)
SELECT br_name, addr, manager_id FROM union1
UNION ALL
SELECT br_name, addr, manager_id FROM union2;
