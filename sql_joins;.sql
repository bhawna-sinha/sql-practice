CREATE DATABASE sql_joins;

USE sql_joins;
CREATE TABLE cricket 
(cricket_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR (30)
);

SELECT * from cricket;

CREATE TABLE football 
(football_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR (30)
);

INSERT INTO cricket (name)
VALUES ('Stuart'), ('Micheal'), ('Johnson'), ('Hayden'), ('Fleming');
SELECT * FROM cricket;

INSERT INTO football (name)
VALUES ('Stuart'), ('Johnson'), ('Hayden'), ('Langer'), ('Astle');
SELECT * FROM football;

players who are in both the sports (inner Join)

SELECT * FROM cricket AS c
INNER JOIN 
football AS f
ON c.name = f.name;

SELECT c.cricket_id, c.name, f.football_id, f.name
FROM cricket AS c 
INNER JOIN Football AS f
ON c.name = f.name;






