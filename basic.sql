-- USE pet_shop;

-- CREATE TABLE cats (
--     name VARCHAR(50),
--     age INT
-- );

-- CREATE TABLE dogs (
--     name VARCHAR(50),
--     breed VARCHAR(50),
--     age INT
-- );

-- DESC cats;

-- USE pet_shop;

-- CREATE TABLE pastries (
--     name VARCHAR(50),
--     quantity INT
-- );

-- DESC pastries;

-- DROP TABLE pastries;

CREATE TABLE cats(
    name VARCHAR(50),
    age INT
);

INSERT INTO cats (name, age) VALUES ("Niko", 6)

INSERT INTO cats (name, age) VALUES("Bandit", 6);
INSERT INTO cats (name, age) VALUES("Newt", 1);

SELECT * FROM cats