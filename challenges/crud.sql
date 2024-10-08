USE chicken_coop;

CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT 'employeed',
    PRIMARY KEY (id)
);

DESC employees;

UPDATE employees
SET
    current_status = 'laid-off'
WHERE
    current_status = 'employed';

SELECT * FROM employees;

DROP TABLE employees;

USE pet_shop;

SELECT cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT name, age FROM cats WHERE breed = "Tabby";

SELECT cat_id, age FROM cats WHERE age = cat_id;

SELECT name, age FROM cats WHERE age = cat_id;