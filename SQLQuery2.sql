CREATE DATABASE my_database;
USE my_database;

CREATE TABLE my_table (
    id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(15),
    gender CHAR(1),
    occupation VARCHAR(50)
);


 SELECT * FROM  my_table;

INSERT INTO my_table (name, age, email, address, phone_number, gender, occupation)
VALUES
('John Doe', 28, 'john@example.com', '123 Elm St', '123-456-7890', 'M', 'Engineer'),
('Jane Doe', 25, 'jane@example.com', '456 Oak St', '987-654-3210', 'F', 'Designer'),
('Tom Smith', 30, 'tom@example.com', '789 Pine St', '111-222-3333', 'M', 'Doctor'),
('Lucy Liu', 22, 'lucy@example.com', '321 Cedar St', '444-555-6666', 'F', 'Artist'),
('David Johnson', 35, 'david@example.com', '654 Birch St', '777-888-9999', 'M', 'Teacher'),
('Alice Brown', 27, 'alice@example.com', '987 Walnut St', '222-333-4444', 'F', 'Nurse'),
('Mark White', 45, 'mark@example.com', '159 Maple St', '555-666-7777', 'M', 'Lawyer'),
('Sophia Green', 40, 'sophia@example.com', '753 Spruce St', '888-999-0000', 'F', 'Manager'),
('Chris Black', 50, 'chris@example.com', '147 Redwood St', '333-444-5555', 'M', 'Chef'),
('Emily Gray', 33, 'emily@example.com', '258 Cypress St', '999-000-1111', 'F', 'Writer'),
('Robert Blue', 38, 'robert@example.com', '369 Palm St', '111-222-0000', 'M', 'Technician'),
('Lisa Red', 29, 'lisa@example.com', '741 Ash St', '222-111-3333', 'F', 'Consultant');

UPDATE my_table SET email = 'john.new@example.com' WHERE id = 1;
UPDATE my_table SET occupation = 'Senior Designer' WHERE id = 2;
UPDATE my_table SET age = 32 WHERE id = 3;
UPDATE my_table SET address = 'New Address 123' WHERE id = 4;

DELETE FROM my_table WHERE id = 5;
DELETE FROM my_table WHERE id = 6;
DELETE FROM my_table WHERE id = 7;

DROP TABLE my_table;

CREATE TABLE my_table (
    id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name VARCHAR(50),
    age INT,
    email VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(15),
    gender CHAR(1),
    occupation VARCHAR(50)
);

INSERT INTO my_table (name, age, email, address, phone_number, gender, occupation)
VALUES
('John Doe', 28, 'john@example.com', '123 Elm St', '123-456-7890', 'M', 'Engineer'),
('Jane Doe', 25, 'jane@example.com', '456 Oak St', '987-654-3210', 'F', 'Designer'),
('Tom Smith', 30, 'tom@example.com', '789 Pine St', '111-222-3333', 'M', 'Doctor'),
('Lucy Liu', 22, 'lucy@example.com', '321 Cedar St', '444-555-6666', 'F', 'Artist');

TRUNCATE TABLE my_table;

INSERT INTO my_table (name, age, email, address, phone_number, gender, occupation)
VALUES
('David Johnson', 35, 'david@example.com', '654 Birch St', '777-888-9999', 'M', 'Teacher'),
('Alice Brown', 27, 'alice@example.com', '987 Walnut St', '222-333-4444', 'F', 'Nurse'),
('Mark White', 45, 'mark@example.com', '159 Maple St', '555-666-7777', 'M', 'Lawyer');

