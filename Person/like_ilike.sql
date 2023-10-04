like

SELECT * FROM person WHERE email LIKE '%.com';
SELECT * FROM person WHERE email LIKE '%youku.com';
SELECT * FROM person WHERE email LIKE '%google.com';
SELECT * FROM person WHERE email LIKE '%google.%';
SELECT * FROM person WHERE email LIKE '________@%';
SELECT * FROM person WHERE country_of_birth LIKE 'P%';

ilike

SELECT * FROM person WHERE country_of_birth ILIKE 'p%';
SELECT * FROM person WHERE country_of_birth ILIKE 'P%';
