where, and, or

SELECT * FROM person WHERE gender = 'Female';
SELECT * FROM person WHERE gender = 'Male';
SELECT * FROM person WHERE country_of_birth = 'China';
SELECT * FROM person WHERE country_of_birth = 'Portugal';
SELECT * FROM person WHERE country_of_birth = 'South Africa'
SELECT * FROM person WHERE gender = 'Female' AND country_of_birth = 'Poland';
SELECT * FROM person WHERE country_of_birth ='Greece' and id<100;
SELECT * FROM person WHERE id=199;
SELECT * FROM person WHERE gender = 'Male' AND (country_of_birth = 'China' OR country_of_birth = 'Poland');
SELECT * FROM person WHERE gender = 'Female' AND (country_of_birth='China' OR country_of_birth = 'Poland') AND last_name = 'Cottom';
SELECT first_name FROM person WHERE country_of_birth = 'China';
SELECT last_name FROM person WHERE country_of_birth= 'China' AND first_name='Zahara';