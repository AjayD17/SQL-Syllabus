/* 
    Data types
    Character = CHAR(5) -> Fixed number of characters.
    Eg: "nyc  "
    Character = VARCHAR(100) -> Variable number of characters.
    Eg: "nyc"
*/

-- Display databases
SHOW DATABASES;

-- Create and delete database
CREATE DATABASE logicfirst;
DROP DATABASE logicfirst;
DROP SCHEMA logicfirst;
DROP SCHEMA IF EXISTS logicfirst;

-- Select the database
USE logicfirst;

-- Display tables
SHOW TABLES;

-- Create student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    gpa DECIMAL(3,2)
);

-- Show table structure
DESCRIBE student;

-- Alter table to add a department column
ALTER TABLE student ADD department VARCHAR(10);

-- Corrected INSERT statement
INSERT INTO student (id, name, gpa, department) VALUES
	(1, "Akash", 8.6, "Bio"),
	(2, "Arjun", 8.7, "logy"),
	(3, "Bala", 7.0, "Science"),
	(4, "Ak", 8.1, "Social"),
	(5, "Jk", 8.2, "Zoology");

-- Retrieve all records from student table
COMMIT;
SELECT * FROM student;
SELECT id, name FROM student;
DROP DATABASE logicfirst;