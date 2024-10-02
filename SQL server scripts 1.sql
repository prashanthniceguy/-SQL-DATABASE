CREATE DATABASE StudentDB;
 USE StudentDB;
 CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    EnrollmentDate DATE
);
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100),
    Credits INT
);
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate, EnrollmentDate)
VALUES 
(1, 'Alice', 'Johnson', '2000-04-15', '2020-09-01'),
(2, 'Bob', 'Smith', '1999-08-22', '2019-09-01');
INSERT INTO Courses (CourseID, CourseName, Credits)
VALUES 
(1, 'Introduction to Programming', 3),
(2, 'Database Systems', 4);
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, Grade)
VALUES 
(1, 1, 1, '2020-09-01', 'A'),
(2, 2, 2, '2019-09-01', 'B');
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT Students.FirstName, Students.LastName, Courses.CourseName, Enrollments.Grade
FROM Enrollments
JOIN Students ON Enrollments.StudentID = Students.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Students.StudentID = 1;