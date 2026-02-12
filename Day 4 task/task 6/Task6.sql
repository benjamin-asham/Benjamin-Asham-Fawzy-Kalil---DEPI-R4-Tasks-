-- Create table For Students and Add Data into it :: 

CREATE TABLE Students (
    StudentID INT IDENTITY(10,5) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);

INSERT INTO Students (FirstName, LastName, Age, Department)
VALUES
('Ahmed', 'Ali', 20, 'Computer Science'),
('Sara', 'Mahmoud', 19, 'Information Systems'),
('Youssef', 'Hany', 21, 'Software Engineering'),
('Mona', 'Tarek', 22, 'Network Engineering');


SELECT * FROM Students; 

