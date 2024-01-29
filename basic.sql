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

-- CREATE TABLE cats(
--     name VARCHAR(50),
--     age INT
-- );

-- INSERT INTO cats (name, age) VALUES ("Niko", 6);
-- INSERT INTO cats (name, age) VALUES ("Bandit", 6);
-- INSERT INTO cats (name, age) VALUES ("Newt", 1);

-- INSERT INTO cats (name, age) VALUES ("October", 2), ("June", 7), ("Meatball", 3);

-- SELECT * FROM cats;

CREATE TABLE people (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

INSERT INTO people (first_name, last_name, age) VALUES ("Tina", "Blecher", 13);
INSERT INTO people (first_name, last_name, age) VALUES ("Bob", "Blecher", 42);

INSERT INTO people (first_name, last_name, age) VALUES ("Linda", "Blecher", 45), ("Phillip", "Frond", 38), ("Calvin", "Fischoeder", 70);

SELECT * FROM people;

DROP TABLE people;