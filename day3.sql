-- taking the database
USE practise;

SELECT COUNT(*) FROM student; -- total row count
SELECT * FROM student; -- print the student table

SELECT COUNT(*) AS total_students FROM student; -- rename the colunm heading and show the data not full rename in databsejust showcase

-- GROUP BY – Group data
SELECT city FROM student;

-- Count students in each city
SELECT city, COUNT(*) FROM student
GROUP BY city;

SELECT age, COUNT(*) 
FROM student
GROUP BY age;

-- Average age per city
SELECT city, AVG(age)
FROM student
GROUP BY city;

-- day3 quiz groupby and consitions

-- Count students in each city
SELECT city, COUNT(*)
FROM student
GROUP BY city;

-- Find average age in each city
SELECT city, AVG(age)
FROM student
GROUP BY city;

-- Find maximum age in each city
SELECT city, MAX(age)
FROM student
GROUP BY city;

-- Find minimum age in each city
SELECT city, MIN(age)
FROM student
GROUP BY city;

-- Show cities where average age is greater than 25
-- SELECT city, AVG(age) > 25
-- FROM student
-- GROUP BY city;
SELECT city, AVG(age)
FROM student
GROUP BY city
HAVING AVG(age) > 25;

-- Cities where students > 1
SELECT city, COUNT(*) AS total
FROM student
GROUP BY city
HAVING total > 1;

-- Count how many students have the same age
SELECT age, COUNT(*) AS "count" 
FROM student
GROUP BY age;

-- Find the city with highest number of students
-- SELECT city, COUNT(*) 
-- FROM student 
-- GROUP BY city ORDER BY city DESC LIMIT 1; full wrong logic
SELECT city, COUNT(*) AS total
FROM student
GROUP BY city
ORDER BY total DESC
LIMIT 1;

-- Find the city with highest average age
-- SELECT city, AVG(age)
-- FROM student
-- GROUP BY city ORDER BY city DESC LIMIT 1; wrong logic
SELECT city, AVG(age) AS avg_age -- we change the age into avg_age why because of the sql detects its a string that why we convert to gave a perfect order by output, othervise order by calculate the string only no ta value number right
FROM student
GROUP BY city
ORDER BY avg_age DESC
LIMIT 1;

-- Show cities where total students are exactly 1
-- SELECT city, COUNT(*)
-- FROM student
-- GROUP BY city ORDER BY city DESC LIMIT 1; wrong logic
SELECT city, COUNT(*) AS total
FROM student
GROUP BY city
HAVING total = 1;

-- practise having HAVING is used with GROUP BY to filter results after grouping.
-- 👉 Use HAVING when you are using:
-- COUNT()
-- AVG()
-- SUM()
-- MAX()
-- MIN()

-- 👉 Alias = temporary name given to a column or table (AS) USED BELOW CODE
SELECT city, COUNT(*) AS total
FROM student
GROUP BY city
HAVING total > 1;

SELECT city, AVG(age) AS avg_age
FROM student
GROUP BY city
HAVING avg_age > 25;
