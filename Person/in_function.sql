in

SELECT * FROM person 
WHERE country_of_birth = 'China' 
OR country_of_birth = 'France' 
OR country_of_birth = 'Brazil';

atlernate using in

SELECT * FROM person
WHERE country_of_birth IN ('China', 'France', 'Brazil');

SELECT first_name, country_of_birth FROM person 
WHERE country_of_birth IN ('Poland', 'South Africa', 'Greece')
ORDER BY country_of_birth;
