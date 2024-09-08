CREATE DATABASE APTECH;

USE APTECH;

CREATE TABLE MARKSHEET (
    RollNo INT PRIMARY KEY IDENTITY(1,2) NOT NULL,
    Name VARCHAR(50),
    PassingYear INT,
    ExamType VARCHAR(20),
    Percentage DECIMAL(6,2)
);

INSERT INTO MARKSHEET (RollNo, Name, PassingYear, ExamType, Percentage) 
VALUES 
(1, 'Aziz', 2019, 'Matric', 89.5),
(2, 'Zain Kamran', 2021, 'Matric', 76.3),
(3, 'Mahad Ayaz', 2020, 'Matric', 65.0),
(4, 'Ahmed Abbasi', 2019, 'Matric', 91.2),
(5, 'Kashan Khan', 2023, 'Matric', 58.4),
(6, 'Khuram Ali', 2023, 'Matric', 49.4);

CREATE TABLE MatricResult AS
SELECT Name, Percentage,
CASE
    WHEN Percentage >= 90 THEN 'A+'
    WHEN Percentage >= 80 THEN 'A'
    WHEN Percentage >= 70 THEN 'B'
    WHEN Percentage >= 60 THEN 'C'
    WHEN Percentage >= 50 THEN 'D'
    ELSE 'F'
END AS Grade
FROM MARKSHEET;


CREATE TABLE Matric_Result (
    Name VARCHAR(50),
    Percentage DECIMAL(5,2),
    Grade VARCHAR(2)
);

INSERT INTO Matric_Result (Name, Percentage, Grade)
SELECT Name, Percentage,
CASE
    WHEN Percentage >= 90 THEN 'A+'
    WHEN Percentage >= 80 THEN 'A'
    WHEN Percentage >= 70 THEN 'B'
    WHEN Percentage >= 60 THEN 'C'
    WHEN Percentage >= 50 THEN 'D'
    ELSE 'F'
END
FROM MARKSHEET;

-- Retrieving from MatricResult
SELECT * FROM MatricResult;

-- Retrieving from Matric_Result
SELECT * FROM Matric_Result;
