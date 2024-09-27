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