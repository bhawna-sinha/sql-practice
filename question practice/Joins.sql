Joins

1. Insert the missing parts in the JOIN clause to join the two tables orders and customers,
using the customer_id field in both tables as the relationship between the two tables.

SELECT * FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id;

2. Choose the correct JOIN clause to select all records from the two tables where there is a match in both tables.


SELECT * FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

3. Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

SELECT SUM(CITY.Population) 
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.Continent = 'Asia';

4. Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

SELECT CITY.name
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';


5. Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.population))
FROM CITY
JOIN COUNTRY ON 
CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;