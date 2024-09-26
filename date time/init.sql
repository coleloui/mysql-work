CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

DESC people;

INSERT INTO
    people (
        name,
        birthdate,
        birthtime,
        birthdt
    )
VALUES (
        'Joe',
        '2000-07-19',
        '11:18:17',
        '2000-07-19 11:18:17'
    );

INSERT INTO
    people (
        name,
        birthdate,
        birthtime,
        birthdt
    )
VALUES (
        'Lulu',
        '1988-12-25',
        '1:08:00',
        '1988-12-25 1:08:00'
    );

INSERT INTO
    people (
        name,
        birthdate,
        birthtime,
        birthdt
    )
VALUES (
        'Elton',
        '2020-02-01',
        '12:00:00',
        '2020-02-01 12:00:00'
    );