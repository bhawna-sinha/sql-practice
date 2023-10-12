joining two tables

UPDATE person SET car_id = 1 WHERE id = 2;
UPDATE person SET car_id = 2 WHERE id = 1;
UPDATE person SET car_id = 3 WHERE id = 4;
UPDATE person SET car_id = 4 WHERE id = 3;
UPDATE person SET car_id = 5 WHERE id = 6;

inner join

SELECT * FROM person
JOIN car ON person.car_id = car.id;

SELECT person.first_name, car.make, car.model, car.price
FROM person 
JOIN car ON person.car_id = car. id;
