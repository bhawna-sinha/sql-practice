extracting fields

SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT (MONTHS FROM NOW());
SELECT EXTRACT (DAY FROM NOW());
SELECT EXTRACT (DOW FROM NOW());
SELECT EXTRACT (CENTURY FROM NOW());

age function

SELECT first_name, last_name, date_of_birth, country_of_birth,
AGE(NOW(), date_of_birth) AS age 
FROM person;