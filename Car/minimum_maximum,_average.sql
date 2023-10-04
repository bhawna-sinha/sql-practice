minimum, maximum, average

SELECT MAX(price)
FROM car;

SELECT MIN(price)
FROM car;

SELECT AVG(price)
FROM car;

SELECT ROUND(AVG(PRICE))
FROM car;

SELECT make, model, 
MIN(price)
FROM car 
GROUP BY make, model 
ORDER BY make ;

SELECT make, model,
MAX(price)
FROM car
GROUP BY make, model
ORDER BY model;

SELECT model,
MAX(price)
FROM car
GROUP BY model;
