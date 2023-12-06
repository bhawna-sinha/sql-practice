Creating table EmployeeA

CREATE TABLE EmployeeA(
EmpID int NOT NULL,
EmpName Varchar,
Gender Char,
Salary int,
City Char(20));

INSERT INTO EmployeeA
VALUES 
(1, 'Arjun', 'M', 75000, 'Pune'),
(2, 'Ekadanta', 'M', 125000, 'Bangalore'),
(3, 'Lalita', 'F', 150000 , 'Mathura'),
(4, 'Madhav', 'M', 250000 , 'Delhi'),
(5, 'Visakha', 'F', 120000 , 'Mathura');

Creating another table EmpDetail

CREATE TABLE EmpDetail (
EmpID int NOT NULL,
Project Varchar,
EmpPosition Char(20),
DOJ date );


INSERT INTO EmpDetail
VALUES (1, 'P1', 'Executive', '26-01-2019'),
(2, 'P2', 'Executive', '04-05-2020'),
(3, 'P1', 'Lead', '21-10-2021'),
(4, 'P3', 'Manager', '29-11-2019'),
(5, 'P2', 'Manager', '01-08-2020');

SELECT * FROM EmployeeA;
SELECT * FROM EmpDetail;

Q1(a): Find the list of employees whose salary ranges between 2L to 3L.

SELECT * FROM EmployeeA
WHERE salary BETWEEN 200000 AND 300000;

SELECT * FROM EmployeeA
WHERE salary > 200000 AND salary < 300000;


Q1(b): Write a query to retrieve the list of employees from the same city.

SELECT * FROM EmployeeA E1, EmployeeA E2
WHERE E1.city = E2.city AND E1.empid != E2.empid;

Q1(c): Query to find the null values in the Employee table.

SELECT * FROM EmployeeA
WHERE empid IS NULL;

Q2(a): Query to find the cumulative sum of employee’s salary.

SELECT EmpID, Salary, SUM(Salary) OVER (ORDER BY EmpID) AS CumulativeSum
FROM EmployeeA;

Q2(b): What’s the male and female employees ratio.

SELECT
(COUNT(*) FILTER (WHERE Gender = 'M') * 100.0 / COUNT(*)) AS MalePct, AS MaleRatio
FROM EmployeeA


Q2(b): What’s the male and female employees ratio.

SELECT
(COUNT(*) FILTER (WHERE gender = 'M') * 100.0 / COUNT(*)) AS MaleRatio,
(COUNT(*) FILTER(WHERE gender = 'F') * 100.0 / COUNT(*)) AS FemaleRatio
FROM EmployeeA;

Q2(c): Write a query to fetch 50% records from the Employee table.

SELECT * FROM EmployeeA
WHERE empid <= (SELECT COUNT(EmpID)/2 from EmployeeA);

Q3: Query to fetch the employee’s salary but replace the LAST 2 digits with ‘XX’
i.e 12345 will be 123XX

SELECT salary,
CONCAT(SUBSTRING(Salary::text, 1, LENGTH(salary::text)-2), 'XX') as masked_number
FROM EmployeeA;


SELECT salary, CONCAT(LEFT(CAST(salary AS text), LENGTH(CAST(Salary AS text))-2), 'XX')
AS masked_number
FROM EmployeeA;
