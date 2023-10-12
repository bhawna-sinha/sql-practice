1. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(*) - COUNT(DISTINCT CITY) AS CityCountDifference
FROM STATION;

Joins

Q. Insert the missing parts in the JOIN clause to join the two tables orders and customers,
using the customer_id field in both tables as the relationship between the two tables.

SELECT * FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id;

Q. Choose the correct JOIN clause to select all records from the two tables where there is a match in both tables.


SELECT * FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;
