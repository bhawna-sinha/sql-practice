sum

SELECT SUM(price) 
FROM car;

SELECT make, 
SUM(price)
FROM car 
GROUP BY make;

SELECT MODEL,
SUM(price)
FROM car
GROUP BY model
LIMIT 5;