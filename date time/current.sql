SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

INSERT INTO
    people (
        name,
        birthdate,
        birthtime,
        birthdt
    )
VALUES (
        'Hazel',
        CURDATE(),
        CURTIME(),
        NOW()
    );

SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate)
FROM people;

SELECT birthdate, MONTHNAME(birthdate), YEAR(birthdate)
FROM people;