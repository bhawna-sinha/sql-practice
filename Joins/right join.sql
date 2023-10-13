right join

SELECT * FROM person
RIGHT JOIN car ON car.id = person.car_id;

SELECT * FROM person 
RIGHT JOIN car 
ON person.car_id= car_id;

SELECT * FROM car
RIGHT JOIN person
ON car_id = person.car_id;

SELECT * FROM person AS p
RIGHT JOIN car AS c
On p.car_id = car_id;