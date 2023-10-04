arithmetic operators rounds

10% of price
SELECT id, make, model, price, price * 0.10 FROM car;

round

SELECT id, make, model, price, 
ROUND(price * 0.10, 2) FROM car;

discounted price with 10%

SELECT id, make, model, price, 
ROUND(price * 0.10, 2), 
ROUND(price - ROUND(price * 0.10, 2)) FROM car;

SELECT id, make, model, price AS original_price, 
ROUND(price * 0.10, 2) AS ten_percent, 
ROUND(price - ROUND(price * 0.10, 2)) AS discounted_price FROM car;
