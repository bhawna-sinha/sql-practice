coalcees

SELECT COALESCE(email, 'not provided') FROM person;

timestamps and dates

SELECT NOW();
SELECT NOW()::TIME;
SELECT NOW()::DATE;