create table employee (
	empid BIGSERIAL NOT NULL ,
	name VARCHAR(50),
	managerid INT
	);
	
INSERT INTO employee (name, managerid) 
VALUES ('Anu', 2);
	
INSERT INTO employee ( name, managerid)
VALUES ('Simmi', 4);
	
INSERT INTO employee ( name, managerid)
VALUES ('RAJ', 1);
	
INSERT INTO employee ( name, managerid)
VALUES ('Jay', 3);

self join

SELECT T1.name AS employee_name, T2.name AS manager_name
FROM employee AS T1
JOIN employee AS T2
ON T2.empid = T1.managerid;