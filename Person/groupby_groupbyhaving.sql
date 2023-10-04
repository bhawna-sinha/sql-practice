group by

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth; 
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth; 

group by having

SELECT country_of_birth, 
COUNT(*) FROM person 
GROUP BY country_of_birth 
HAVING COUNT(*)>5 
ORDER BY country_of_birth;

SELECT country_of_birth,
COUNT(*) FROM person
GROUP BY country_of_birth
HAVING COUNT(*)>=41;