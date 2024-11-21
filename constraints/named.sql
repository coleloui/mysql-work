CREATE Table users (
    username VARCHAR(50) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);

INSERT INTO users (username, age) VALUES ('technokid', 10);

INSERT INTO users (username, age) VALUES ('imaginary', -1);