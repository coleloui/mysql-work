SELECT name, birthtime, HOUR(birthtime) FROM people;

SELECT name, birthtime, MINUTE(birthtime) FROM people;

SELECT name, birthtime, SECOND(birthtime) FROM people;

SELECT name, birthtime, SECOND(birthdt) FROM people;

SELECT MONTHNAME(birthdate), DAY(birthdate), YEAR(birthdate)
FROM people;

SELECT CONCAT(
        MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)
    )
FROM people;

SELECT DATE_FORMAT(birthdate, '%b') FROM people;

SELECT DATE_FORMAT(birthdate, '%a %M %D %Y') FROM people;

SELECT DATE_FORMAT(birthdt, '%h:%i') FROM people;

SELECT DATE_FORMAT(birthdt, '%r') FROM people;