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