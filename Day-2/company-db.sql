CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_day DATE,
    gender VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);

CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

ALTER TABLE employee
ADD FOREIGN KEY (branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee 
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

CREATE TABLE client(
    client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id)ON DELETE SET NULL
);

CREATE TABLE works_with(
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY (emp_id,client_id),
   FOREIGN KEY (emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
   FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier(
    branch_id INT,
    supplier_name VARCHAR(40),
    supplier_type VARCHAR(40),
    PRIMARY KEY(branch_id,supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id)ON DELETE CASCADE
);

INSERT INTO employee VALUES (100,'DAVID','WALLACE','1967-11-17','M',250000,NULL,NULL);
INSERT INTO branch VALUES (1,'Corporate',100,'2006-02-09');

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES (102,'MICHAEL','SCOTT','1961-05-11','F',110000,100,1);
INSERT INTO branch VALUES (2,'Scranton',102,'1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES (103,'ANGELA','MARTIN','1971-06-25','F',63000,102,2);
INSERT INTO employee VALUES (104,'KELLY','KAPOOR','1980-02-05','F',55000,102,2);
INSERT INTO employee VALUES (105,'STANLEY','HUDSON','1958-02-19','M',69000,102,2);

INSERT INTO employee VALUES (106,'JOSH','PORTER','1969-09-05','M',78000,100,NULL);
INSERT INTO branch VALUES (3,'Stamford',106,'1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES (107,'ANDY','BERNARD','1973-07-22','M',65000,106,3);
INSERT INTO employee VALUES (108,'JIM','HALPERT','1977-10-01','M',65000,106,3);

INSERT INTO branch_supplier VALUES(2,'HAMMER MILL','PAPER');
INSERT INTO branch_supplier VALUES(2,'UNI-BALLL','WRITING UTENSILS');
INSERT INTO branch_supplier VALUES(3,'PATRIOT PAPER','PAPER');
INSERT INTO branch_supplier VALUES(2,'J.T. FORMS & LABELS','CUSTOM FORMS');
INSERT INTO branch_supplier VALUES(3,'UNI-BALL','WRITING UTENSILS');
INSERT INTO branch_supplier VALUES(3,'HAMMER MILL','PAPER');
INSERT INTO branch_supplier VALUES(3,'STAMFORD LABALSL','CUSTOM FORMS');

INSERT INTO client VALUES(400,'DUNMORE HIGHSCHOOL',2);
INSERT INTO client VALUES(401,'LACKAWANA COUNTRY',2);
INSERT INTO client VALUES(402,'FedEX',3);
INSERT INTO client VALUES(403,'JOHN DALT LAW,LLC',3);
INSERT INTO client VALUES(404,'SCRANTON WHITEPAGES',2);
INSERT INTO client VALUES(405,'TIMES NEWS PAPER',3);
INSERT INTO client VALUES(406,'FedEX',2);

show tables;

SELECT*FROM client;
SELECT*FROM branch_supplier;
SELECT*FROM employee;
SELECT*FROM branch;
SELECT*FROM works_with;

INSERT INTO works_with VALUES(105,400,55000);
INSERT INTO works_with VALUES(102,401,267000);
INSERT INTO works_with VALUES(108,402,22500);
INSERT INTO works_with VALUES(107,403,5000);
INSERT INTO works_with VALUES(105,403,12000);
INSERT INTO works_with VALUES(105,404,33000);
INSERT INTO works_with VALUES(107,405,26000);
INSERT INTO works_with VALUES(102,406,15000);
INSERT INTO works_with VALUES(105,406,130000);

UPDATE works_with
SET emp_id = 108
WHERE total_sales = 12000;

SELECT*FROM works_with;