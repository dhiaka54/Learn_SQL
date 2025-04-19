-- Group By

SELECT *
FROM employee_demographics;
 
SELECT gender, AVG(age), MAX(age), MIN(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY age ASC 
;

SELECT *
FROM employee_demographics
ORDER BY gender, age 
;

SELECT *
FROM employee_demographics
ORDER BY 5, 4 
;