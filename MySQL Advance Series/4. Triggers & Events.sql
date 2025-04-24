-- Triggers & Events
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
	VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;
-- DROP TRIGGER IF EXISTS employee_insert;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphio', 'Saperstein', 'Exntertainment 20 CEO', 1000000, NULL);

-- EVENTS
SELECT *
FROM employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
    FROM employee_demographics
    WHERE ge >= 60;
END $$
DELIMITER ;

-- SHOW VARIABLES LIKE 'event%';