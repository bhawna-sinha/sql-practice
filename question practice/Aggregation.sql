1. Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT FLOOR(AVG(Population)) 
FROM CITY;

2. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

SELECT SUM(population) FROM CITY
WHERE COUNTRYCODE = 'JPN';

3. Query the difference between the maximum and minimum populations in CITY.

SELECT (MAX(population) - MIN(population))
FROM CITY;


4. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(*) - COUNT(DISTINCT CITY) AS CityCountDifference
FROM STATION;