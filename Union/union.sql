union

SELECT name, cust_amount
FROM cust1
UNION 
SELECT name, cust_amount
FROM cust2;

SELECT * FROM cust1
UNION
SELECT * FROM cust2;

SELECT id, cust_amount
FROM cust1
UNION
SELECT id, cust_amount
FROM cust2;