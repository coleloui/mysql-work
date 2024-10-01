SELECT birthdate FROM people;

SELECT birthdate, DATEDIFF(CURDATE(), birthdate) FROM people;

SELECT DATE_ADD( CURRENT_DATE(), INTERVAL 1 YEAR );

SELECT birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR) as '18th birthdate'
FROM people;

SELECT TIMEDIFF(CURTIME(), '07:00:00');