CREATE Table partiers (
    name VARCHAR(50),
    age INT CHECK (age > 18)
);

INSERT INTO partiers (name, age) VALUES ('john', 20);

INSERT INTO partiers (name, age) VALUES ('paul', -2);

SELECT * FROM partiers;

CREATE Table pallindromes (
    word VARCHAR(100) CHECK (REVERSE(word) = word)
);

INSERT INTO pallindromes (word) VALUES ('racecar');

INSERT INTO pallindromes (word) VALUES ('hello');