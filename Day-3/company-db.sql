SELECT*
FROM employee
ORDER BY salary ASC;

SELECT*
FROM employee
ORDER BY salary DESC;

SELECT*
FROM employee
ORDER BY gender;

SELECT*
FROM employee
LIMIT 5;

SELECT first_name,last_name
FROM employee;

SELECT first_name AS forename, last_name AS surname
FROM employee;

SELECT DISTINCT gender
FROM employee;

SELECT*
FROM employee
WHERE gender = 'M';

SELECT emp_id, first_name, last_name
FROM employee
WHERE birth_day >= 1970-01-01;

SELECT*
FROM employee
WHERE branch_id = 2 AND gender = 'F';

SELECT*
FROM employee
WHERE (birth_day >='1970-01-01' AND gender ='F') OR salary > 80000;

SELECT*
FROM employee
WHERE birth_day BETWEEN '1970-01-01' AND '1975-01-01';

SELECT*
FROM employee
WHERE first_name IN('JIM', 'MICHAEL', 'JOSH', 'DAVID');

FUNCTIONS

SELECT COUNT (salary)
FROM employee;

SELECT AVG(salary)
FROM employee;

SELECT SUM (salary)
FROM employee;

SELECT COUNT(super_id)
FROM employee;

SELECT COUNT(gender), gender
FROM employee
GROUP BY gender;

SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;

SELECT*
FROM client
WHERE client_name LIKE '%LLC';

SELECT*
FROM branch_supplier
WHERE supplier_name LIKE '%LABEL';

SELECT*
FROM employee
WHERE birth_day LIKE '__________10%';

SELECT*
FROM client
WHERE client_name LIKE '%HIGHSCHOOL%';

SELECT employee.first_name AS Employee_Branch_Names
FROM employee
UNION
SELECT branch.branch_name
FROM branch;

INSERT INTO branch VALUE(4, "BUFFALO", NULL, NULL);