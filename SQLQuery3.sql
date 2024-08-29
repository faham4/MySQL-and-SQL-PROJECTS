CREATE DATABASE My_db;

USE My_db;

CREATE TABLE Student (
  id INT(10) AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(33) NOT NULL,
    Age INT(3)
    
);

SELECT * FROM Student;

INSERT INTO Student (Name,Age) VALUES ('Ahmed',23),
                                       ('Hasnain',22),
                                       ('Fakir',24),
                                       ('Yasir',18),
                                       ('Aziz',20),
                                       ('Ali',19);
                                       
 ALTER TABLE Student ADD COLUMN contact VARCHAR(11),ADD COLUMN faculity VARCHAR(23);    
                     
                     
UPDATE Student SET faculity = 'Sir Mohsin'; 

ALTER TABLE Student DROP COLUMN contact; 

 -- second  table

CREATE TABLE Employees (
ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR (33) NOT NULL,
Department VARCHAR(33) NOT NULL,
Salary INT
);


SELECT * FROM Employees;

INSERT INTO Employees (Name, Department, Salary) VALUES 
    ('Ahmed', 'Sales', 158000),
    ('Hasnain', 'Production', 53000),
    ('Fakir', 'Production', 98000),
    ('Yasir', 'Marketing', 12500),
    ('Aziz', 'Sales', 32150),
    ('Ali', 'Sales', 32150);
    
SELECT SUM(Salary) As 'Total Salary' FROM Employees;
-- MAXIUM SALARY -- 
SELECT MAX(Salary) As 'MAX SALARY' FROM Employees;
-- Lowest salary --
SELECT MIN(Salary) As 'Total Salary' FROM Employees;

SELECT COUNT(Salary) As ' Number of Employees with Salary' FROM Employees;



SELECT * FROM Employees WHERE Salary > 100000;

-- Retrieve all employees working in the 'Production' department
SELECT * FROM Employees WHERE Department = 'Production';

-- Retrieve all employees with a salary between 50,000 and 100,000 (inclusive)
SELECT * FROM Employees WHERE Salary > 50000 AND Salary < 100000;


SELECT * FROM Employees WHERE Salary >= 150000 OR Salary >= 160000;
 
                  
