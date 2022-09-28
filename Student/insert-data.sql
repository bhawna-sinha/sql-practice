/* Inserting 5 rows */
INSERT INTO student VALUES(1,'JACK', 'BIOLOGY',7.6);
INSERT INTO student VALUES(2,'clare', 'ECONOMICS',8.2);
INSERT INTO student VALUES(3,'Maria', 'English',6.2);
INSERT INTO student VALUES(4,'kiya', 'mathematics',5.7);
INSERT INTO student VALUES(5,'hello', 'Hindi',6.3);

/* Updating major to BIO wherever it is BIOLOGY */
UPDATE student
SET major='BIO'
WHERE major='BIOLOGY';

/* Updating major to Hinglish wherever it is both Hindi and English */
UPDATE student
SET major ='Hinglish'
WHERE major ='Hindi' AND major ='English';