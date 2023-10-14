INSERT INTO cust1 (name, cust_amount) 
VALUES ('Tani', 2100);
	
INSERT INTO cust1 ( name, cust_amount)
VALUES ('Tanu', 4000);
	
INSERT INTO cust1 ( name, cust_amount)
VALUES ('Rinky', 1500);
	
INSERT INTO cust1 ( name, cust_amount)
VALUES ('Pinky', 3000);



create table cust2 (
	id BIGSERIAL NOT NULL ,
	name VARCHAR(50),
	cust_amount INT
	);
	
INSERT INTO cust2 (name, cust_amount) 
VALUES ('Tani', 2100);
	
INSERT INTO cust2 ( name, cust_amount)
VALUES ('Mahesh', 7000);
	
INSERT INTO cust2 ( name, cust_amount)
VALUES ('Ravi', 3500);
	
INSERT INTO cust2 ( name, cust_amount)
VALUES ('Siv', 5000);

INSERT INTO cust2 ( name, cust_amount)
VALUES ('Dimpy', 2500);
