-- WHERE CLAUSE
SELECT *
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 55000
;

-- AND OR NOT (Logical operator)
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 55000 AND dept_id = '1'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE (salary > 55000 AND dept_id = '1') OR occupation = 'Office Manager'
;

-- Like Statement (% and __)
SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'An%'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'a__' -- depend on how many _ 
;