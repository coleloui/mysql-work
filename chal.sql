-- USE chicken_coop;

-- CREATE TABLE employees (
--     id INT AUTO_INCREMENT, first_name VARCHAR(20) NOT NULL, middle_name VARCHAR(20), last_name VARCHAR(20) NOT NULL, age INT NOT NULL, current_status VARCHAR(20) NOT NULL DEFAULT 'employeed', PRIMARY KEY (id)
-- );

-- DESC employees;

-- UPDATE employees
-- SET
--     current_status = 'laid-off'
-- WHERE
--     current_status = 'employed';

-- SELECT * FROM employees;

-- DROP TABLE employees;

-- USE pet_shop;

-- SELECT cat_id FROM cats;
-- SELECT name, breed FROM cats;
-- SELECT name, age FROM cats WHERE breed = "Tabby";
-- SELECT cat_id, age FROM cats WHERE age = cat_id;
-- SELECT name, age FROM cats WHERE age = cat_id;

-- UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';

-- UPDATE cats SET breed = 'Brittish Shorthair' WHERE name = 'Ringo';

-- UPDATE cats SET age = 12 WHERE breed = 'Maine Coon';

-- DELETE FROM cats WHERE age = 4;

-- DELETE FROM cats WHERE age = cat_id;

-- DELETE FROM cats;

-- SELECT * FROM cats;