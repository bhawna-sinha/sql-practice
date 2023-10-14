union all

SELECT * FROM cust1
UNION ALL
SELECT * FROM cust2;

SELECT id, cust_amount
FROM cust1
UNION ALL
SELECT id, cust_amount
FROM cust2;

SELECT name, cust_amount
FROM cust1
UNION ALL
SELECT name, cust_amount
FROM cust2;