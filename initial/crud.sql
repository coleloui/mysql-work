USE pet_shop;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO
    cats (name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
    ('Cindy', 'Maine Coon', 10),
    (
        'Dumbledore',
        'Maine Coon',
        11
    ),
    ('Egg', 'Persian', 4),
    ('Misty', 'Tabby', 13),
    (
        'George Michael',
        'Ragdoll',
        9
    ),
    ('Jackson', 'Sphynx', 7);

SELECT name, breed FROM cats;

SELECT name, age FROM cats;

SELECT name, age FROM cats WHERE age = 4;

SELECT cat_id as ID FROM cats;

UPDATE cats SET breed = 'Shorthair' WHERE breed = 'Tabby';

UPDATE cats SET age = 14 WHERE name = 'Misty';

DELETE FROM cats WHERE name = 'Egg';

SELECT name, age FROM cats;