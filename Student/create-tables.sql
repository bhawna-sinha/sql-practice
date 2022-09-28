/* Creating student table */
CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

/* Adding gpa column */
ALTER TABLE student ADD gpa DECIMAL(3,2);