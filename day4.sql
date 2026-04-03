-- taking the database
USE practise;

-- join operation
-- Data is in multiple tables We combine them using JOIN

SELECT * FROM student;

CREATE TABLE marks (
student_id INT,
marks int
);

INSERT INTO marks VALUES
(1, 90),
(2, 80),
(3, 70),
(6, 60);

SELECT * FROM marks;
-- INNER JOIN → only matching rows
-- LEFT JOIN → all left table rows

-- INNER JOIN
SELECT student.name, marks.marks
FROM student
INNER JOIN marks
ON student.id = marks.student_id;

-- left join
SELECT student.name, marks.marks
FROM student
LEFT JOIN marks
ON student.id = marks.student_id;

-- right join
-- 👉 Show all data from marks table
-- 👉 Even if student not found

SELECT student.name, marks.marks
FROM student
RIGHT JOIN marks
ON student.id = marks.student_id;

-- FULL JOIN (using UNION) this will help to ignore the null value show all the table value usiing union
SELECT student.name, marks.marks
FROM student
LEFT JOIN marks
ON student.id = marks.student_id

UNION

SELECT student.name, marks.marks
FROM student
RIGHT JOIN marks
ON student.id = marks.student_id;

-- 1. JOIN with conditions (real-world filtering)
SELECT student.name, marks.marks
FROM student
JOIN marks
ON student.id = marks.student_id
WHERE marks > 80;

-- 2. JOIN + GROUP BY (very common in jobs)
SELECT student.city, COUNT(marks.marks)
FROM student
JOIN marks
ON student.id = marks.student_id
GROUP BY student.city;

-- Show student names with marks greater than 70
SELECT student.name, marks.marks
FROM student
JOIN marks
ON student.id = marks.student_id
WHERE marks.marks > 70;

-- Count number of students who have marks
SELECT COUNT(*) AS total_students
FROM student
JOIN marks
ON student.id = marks.student_id;

-- Show city-wise count of students who have marks
SELECT student.city, COUNT(*) AS total
FROM student
JOIN marks
ON student.id = marks.student_id
GROUP BY student.city;