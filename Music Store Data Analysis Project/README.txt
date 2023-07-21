SELECT * FROM album

Q1. Who is the senior most employee based on job title?

SELECT * FROM employee
ORDER BY levels desc
Limit 1

Q2. Which country have the most Invoices?

SELECT COUNT(*) as c, billing_country
FROM invoice
GROUP BY billing_country
ORDER BY c desc

Q3. What are the top 3 values of total invoice?

SELECT total FROM invoice
ORDER BY total desc
LIMIT 3

Q4. which city has the best customers?We would like to through a promotional music festival in the city we made the most money. Write a querry that returns one city that has the highest sum of invoice totals. return both the city name and sum of all invoices total.

SELECT SUM(total) as invoice_total, billing_city
FROM invoice
GROUP BY billing_city
ORDER BY invoice_total desc

