CREATE DATABASE SCHOOL_DB;


-- Create Students table
CREATE TABLE Student (
    StudentID int PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(100)
);

SELECT * FROM Student;

-- Insert records into Students table
INSERT INTO Student (StudentID, FirstName, LastName, Email)
VALUES
    (1, 'faham', 'abbasi', 'faham.abbasi@example.com'),
    (2, 'ahmed', 'ali', 'ahmed.ali@example.com'),
    (3, 'yasir', 'aly', 'yasir.aly@example.com'),
    (4, 'ali', 'khan', 'ali.khan@example.com'),
    (5, 'faizan', 'khan', 'faizan.@example.com'),
    (6, 'imran', 'ilyas', 'imran@example.com'),
    (7, 'yosouf', 'naveed', 'yousuf@example.com'),
    (8, 'aziz', 'patel', 'aziz@example.com'),
    (9, 'zain', 'kamran', 'zain@example.com'),
    (10, 'khan', 'zada', 'khan@example.com'),
    (11, 'mahad', 'ayaz', 'mahad@example.com'),
    (12, 'saad', 'abdullah', 'saad@example.com'),
    (13, 'mohsin', 'ali', 'mohsin@example.com'),
    (14, 'David', 'Kim', 'david.kim@example.com'),
    (15, 'Olivia', 'Patel', 'olivia.patel@example.com');



-- Create Courses table
CREATE TABLE Courses (
    CourseID int PRIMARY KEY NOT NULL,
    CourseName varchar(100),
    Credits int
);

SELECT * FROM Courses;
-- Insert records into Courses table
INSERT INTO Courses (CourseID, CourseName, Credits)
VALUES
    (1, 'Math 101', 3),
    (2, 'English 102', 3),
    (3, 'Science 103', 4),
    (4, 'History 104', 3),
    (5, 'Computer Science 105', 4),
    (6, 'Biology 106', 4),
    (7, 'Physics 107', 4),
    (8, 'Chemistry 108', 4),
    (9, 'Economics 109', 3),
    (10, 'Business 110', 3),
    (11, 'Psychology 111', 3),
    (12, 'Sociology 112', 3),
    (13, 'Philosophy 113', 3),
    (14, 'Anthropology 114', 3),
    (15, 'Geography 115', 3);


-- Create Enrollments table
CREATE TABLE Enrollment (
    EnrollmentID int PRIMARY KEY  NOT NULL,
    StudentID int,
    CourseID int,
    Grade varchar(2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

SELECT * FROM Enrollment;
-- Insert records into Enrollments table
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, Grade)
VALUES
    (1, 1, 1, 'A'),
    (2, 1, 2, 'B'),
    (3, 1, 3, 'A'),
    (4, 2, 1, 'C'),
    (5, 2, 4, 'B'),
    (6, 3, 2, 'A'),
    (7, 3, 5, 'B'),
    (8, 4, 3, 'C'),
    (9, 4, 6, 'A'),
    (10, 5, 4, 'B'),
    (11, 5, 7, 'C'),
    (12, 6, 5, 'A'),
    (13, 6, 8, 'B'),
    (14, 7, 6, 'C'),
    (15, 7, 9, 'A');

	SELECT 
    Student.StudentID, 
    Student.FirstName, 
    Student.LastName, 
    Courses.CourseName, 
    Enrollment.Grade
FROM 
    Student
LEFT JOIN 
    Enrollment ON Student.StudentID = Enrollment.StudentID
LEFT JOIN 
    Courses ON Enrollment.CourseID = Courses.CourseID;

	SELECT 
    Courses.CourseID, 
    Courses.CourseName, 
    Student.FirstName, 
    Student.LastName, 
    Enrollment.Grade
FROM 
    Enrollment
RIGHT JOIN 
    Courses ON Enrollment.CourseID = Courses.CourseID
LEFT JOIN 
    Student ON Enrollment.StudentID = Student.StudentID;
