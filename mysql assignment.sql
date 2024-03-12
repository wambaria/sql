DROP DATABASE IF EXISTS edu_institute;
CREATE DATABASE edu_institute;
USE edu_institute;

#creating a database table
CREATE TABLE students (
     student_id INT PRIMARY KEY,
     name VARCHAR(50),
     age INT,
     gender CHAR(1),
     enrollment_date DATE,
     program VARCHAR(50)
);

#data insertion
INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES
    (1, 'Ian', 22, 'F', '2023-01-15', 'Data Science'),
    (2, 'Joseph', 20, 'M', '2023-02-10', 'Computer Science'),
    (3, 'Eugene', 21, 'M', '2023-03-20', 'Data Science'),
    (4, 'Williams', 23, 'F', '2023-04-05', 'Mathematics'),
    (5, 'Pauline', 19, 'F', '2023-05-01', 'Data Science');
    
 #data query
 SELECT * FROM students WHERE program = 'Data Science';

#total no of students
SELECT COUNT(*) AS TotalStudents FROM students;

#display date in a column
SELECT CURRENT_DATE() AS "Today's Date";

#selecting students and enrollment dates in UPPERCASE
SELECT UPPER(name) AS Name, enrollment_date FROM students;

#counting no of students in each program (descending order)
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

#youngest student by age
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;
