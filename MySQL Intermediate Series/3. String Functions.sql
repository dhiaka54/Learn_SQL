-- String Function
SELECT LENGTH('dhiaka');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

SELECT UPPER('dhIaKa');
SELECT LOWER('dhIaKa');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

SELECT TRIM('   dhIaKa  '); -- all
SELECT LTRIM('   dhIaKa  '); -- left
SELECT RTRIM('   dhIaKa  '); -- right

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2), -- take two char start form third char
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('H', 'Dhiaka'); -- its can for lower or upper

-- combine column
SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;