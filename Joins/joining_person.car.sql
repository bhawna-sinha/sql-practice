create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);

insert into car (id, make, model, price) values (1, 'Smart', 'Fortwo', '90032.25');
insert into car (id, make, model, price) values (2, 'Cadillac', 'Catera', '58269.43');
insert into car (id, make, model, price) values (3, 'Dodge', 'Challenger', '80746.41');
insert into car (id, make, model, price) values (4, 'Porsche', '944', '31996.32');
insert into car (id, make, model, price) values (5, 'Buick', 'Somerset', '31389.66');



create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	gender VARCHAR(7),
	date_of_birth DATE,
	country_of_birth VARCHAR(50),
	car_id BIGINT REFERENCES car(id),
	UNIQUE(car_id)
);


insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth)
values ('Twila', 'Larmouth', 'tlarmouth0@goo.ne.jp', 'Female', '2023/06/11', 'Portugal');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth)
values ('Elsa', 'Itzhaki', 'eitzhaki1@tripadvisor.com', 'Female', '2023/01/09', 'Lithuania');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) 
values ('Eartha', 'Duligall', 'eduligall2@springer.com', 'Female', '2023/08/18', 'South Africa');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) 
values ('Cherlyn', 'Chevis', null, 'Female', '2023/04/15', 'China');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) 
values ('Keir', 'Yurkov', 'kyurkov4@mlb.com', 'Male', '2022/10/08', 'Russia');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) 
values ('Creighton', 'Cluderay', 'ccluderay5@answers.com', 'Male', '2023/08/17', 'United States');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) 
values ('Bette-ann', 'Spilsted', 'bspilsted6@technorati.com', 'Female', '2022/12/13', 'Greece');

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) 
values ('Thomasine', 'Otton', 'totton7@princeton.edu', 'Female', '2023/07/10', 'Philippines');
