create table customer (
	customer_id INT,
	amount INT,
	mode VARCHAR(50),
	payment_date DATE
);
insert into customer (customer_id, amount, mode, payment_date) values (1, 73503, 'online', '3-8-2023');
insert into customer  (customer_id, amount, mode, payment_date) values (2, 12464, 'cash', '1-11-2023');
insert into customer (customer_id, amount, mode, payment_date) values (3, 95640, 'credit card', '4-4-2023');
insert into customer  (customer_id, amount, mode, payment_date) values (4, 197392, 'cash', '10-2-2022');
insert into customer (customer_id, amount, mode, payment_date) values (5, 50682, 'online', '2-5-2023');

sub querry

FIND AVERAGE AMOUNT AND FILTER THE CUSTOMER WHOSE AMOUNT IS GREATER THAN AVERAGE AMOUNT

1. avgerage amount-

(SELECT AVG(amount) FROM customer);

2. sub query/nested query (using comparison operator)-

SELECT *
FROM customer
WHERE amount > (SELECT AVG(amount) FROM customer);

3. using logical operator-

A. (in)

SELECT customer_id, amount, mode 
FROM customer
WHERE customer_id IN (SELECT customer_id FROM cust1);

B. (exists operator)

SELECT name
FROM cust1 
WHERE EXISTS(SELECT customer_id, amount
              FROM customer
              WHERE cust1.id = customer.customer_id
			  AND amount >10000);








