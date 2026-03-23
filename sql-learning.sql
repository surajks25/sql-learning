CREATE DATABASE practise;
USE practise;

CREATE TABLE student(
id INT,
name VARCHAR(20),
age INT,
city VARCHAR(50)
);

INSERT INTO student VALUES
(1, 'raj', 20, 'mangalore'),
(2, 'manoj', 23, 'bangalore'),
(3, 'jam', 42, 'udupi'),
(4, 'aksar', 15, 'bangalore'),
(5, 'druv', 35, 'sringeri');

SHOW TABLES;
SELECT * FROM student;
DESC student;

SELECT * FROM student WHERE age>30;

SELECT * FROM student
WHERE age > 20 AND city = 'bangalore';

SELECT * FROM student
WHERE city = 'udupi' OR city = 'bangalore';

SELECT * FROM student
LIMIT 2; 

SELECT * FROM student
ORDER BY age DESC;


-- day2
SELECT * FROM student 
WHERE age > 20;

SELECT * FROM student
ORDER BY age DESC;

SELECT * FROM student
ORDER BY age ASC;

SELECT * FROM student
LIMIT 2;

SELECT * FROM student
ORDER BY age DESC LIMIT 2;


-- mini test
-- Show all students whose age is greater than 20
SELECT * FROM student
WHERE age > 20;
-- Show students who are from Bangalore
SELECT * FROM student
WHERE city = "bangalore";
-- Show students whose age is greater than 20 AND city is Bangalore
SELECT * FROM student
WHERE age > 20 AND city = "bangalore";
-- Show students from Mangalore OR Udupi
SELECT * FROM student
WHERE city = "mangalore" OR city = "udupi";
-- Show the top 2 oldest students
SELECT * FROM student
ORDER BY age DESC LIMIT 2;
-- Show the youngest student
SELECT * FROM student
ORDER BY age ASC LIMIT 1;

