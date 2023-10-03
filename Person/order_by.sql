order by

SELECT * FROM person ORDER BY country_of_birth DESC;
SELECT * FROM person ORDER BY country_of_birth ASC;
SELECT * FROM person ORDER BY first_name DESC;
SELECT * FROM person ORDER BY first_name DESC;
SELECT * FROM person ORDER BY last_name ASC;
SELECT * FROM person ORDER BY last_name DESC;
SELECT * FROM person ORDER BY date_of_birth DESC;
SELECT * FROM person ORDER BY id DESC;
SELECT * FROM person ORDER BY email DESC;
SELECT * FROM person ORDER BY id, email;
SELECT * FROM person ORDER BY id, email DESC;

distinct

SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth;