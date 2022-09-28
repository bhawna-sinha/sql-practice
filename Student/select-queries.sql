/* Read all data from student table */
SELECT * FROM student;

/* Read specific columns */
SELECT name, major
FROM student;

/* Sorting by name in ascending order(default)*/
SELECT student.name, student.major
FROM student
ORDER BY name;

/* Sorting by name in descending order */
SELECT student.name,student.major
FROM student
ORDER BY student_id DESC;

/* Show all rows where major is not chemistry */
SELECT name, major
FROM student
WHERE major <> 'chemistry';

/* Show rows with name belonging to a list */
SELECT * FROM student
WHERE name IN('hello','JACK', 'clare');



