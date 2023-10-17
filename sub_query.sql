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


FIND AVERAGE AMOUNT AND FILTER THE CUSTOMER WHOSE AMOUNT IS GREATER THAN AVERAGE AMOUNT


sub query/nested query

SELECT *
FROM customer
WHERE amount > (SELECT AVG(amount) FROM customer);