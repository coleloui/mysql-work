create VIEW full_reviews AS
SELECT
    title,
    released_year,
    genre,
    rating,
    first_name,
    last_name
FROM
    reviews
    JOIN series on series.id = reviews.series_id
    JOIN reviewers on reviewers.id = reviews.reviewer_id;

CREATE VIEW ordered_series AS
SELECT *
FROM series
ORDER BY released_year;

CREATE OR REPLACE VIEW ordered_series AS
SELECT *
FROM series
ORDER BY released_year DESC;

ALTER VIEW ordered_series AS
SELECT *
FROM series
ORDER BY released_year;

DROP VIEW ordered_series;

SELECT title, AVG(rating)
from full_reviews
GROUP BY
    title
HAVING
    count(rating) > 1;

SELECT title, AVG(rating)
FROM full_reviews
GROUP BY
    title
WITH
    ROLLUP;

SELECT title, COUNT(rating)
FROM full_reviews
GROUP BY
    title
WITH
    ROLLUP;

SELECT
    first_name,
    released_year,
    genre,
    AVG(rating)
FROM full_reviews
GROUP BY
    released_year,
    genre,
    first_name
WITH
    ROLLUP;