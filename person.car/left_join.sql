left join

SELECT * FROM person
LEFT JOIN car ON person.car_id = car.id;

SELECT * FROM person
LEFT JOIN car ON car.id = person.car_id
WHERE car.* IS NULL;