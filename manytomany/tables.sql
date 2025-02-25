-- Active: 1725983707775@@127.0.0.1@3306@tv_db
create table reviewers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE series (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    released_year YEAR,
    genre VARCHAR(100)
);

CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2, 1),
    series_id INT,
    reviewer_id INT,
    Foreign Key (series_id) REFERENCES series (id),
    Foreign Key (reviewer_id) REFERENCES reviewers (id)
);

create database tv_db;

use tv_db;

INSERT INTO
    series (title, released_year, genre)
VALUES ('Archer', 2009, 'Animation'),
    (
        'Arrested Development',
        2003,
        'Comedy'
    ),
    (
        "Bob's Burgers",
        2011,
        'Animation'
    ),
    (
        'Bojack Horseman',
        2014,
        'Animation'
    ),
    ("Breaking Bad", 2008, 'Drama'),
    (
        'Curb Your Enthusiasm',
        2000,
        'Comedy'
    ),
    ("Fargo", 2014, 'Drama'),
    (
        'Freaks and Geeks',
        1999,
        'Comedy'
    ),
    (
        'General Hospital',
        1963,
        'Drama'
    ),
    (
        'Halt and Catch Fire',
        2014,
        'Drama'
    ),
    (
        'Malcolm In The Middle',
        2000,
        'Comedy'
    ),
    (
        'Pushing Daisies',
        2007,
        'Comedy'
    ),
    ('Seinfeld', 1989, 'Comedy'),
    (
        'Stranger Things',
        2016,
        'Drama'
    );

INSERT INTO
    reviewers (first_name, last_name)
VALUES ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');

INSERT INTO
    reviews (
        series_id,
        reviewer_id,
        rating
    )
VALUES (1, 1, 8.0),
    (1, 2, 7.5),
    (1, 3, 8.5),
    (1, 4, 7.7),
    (1, 5, 8.9),
    (2, 1, 8.1),
    (2, 4, 6.0),
    (2, 3, 8.0),
    (2, 6, 8.4),
    (2, 5, 9.9),
    (3, 1, 7.0),
    (3, 6, 7.5),
    (3, 4, 8.0),
    (3, 3, 7.1),
    (3, 5, 8.0),
    (4, 1, 7.5),
    (4, 3, 7.8),
    (4, 4, 8.3),
    (4, 2, 7.6),
    (4, 5, 8.5),
    (5, 1, 9.5),
    (5, 3, 9.0),
    (5, 4, 9.1),
    (5, 2, 9.3),
    (5, 5, 9.9),
    (6, 2, 6.5),
    (6, 3, 7.8),
    (6, 4, 8.8),
    (6, 2, 8.4),
    (6, 5, 9.1),
    (7, 2, 9.1),
    (7, 5, 9.7),
    (8, 4, 8.5),
    (8, 2, 7.8),
    (8, 6, 8.8),
    (8, 5, 9.3),
    (9, 2, 5.5),
    (9, 3, 6.8),
    (9, 4, 5.8),
    (9, 6, 4.3),
    (9, 5, 4.5),
    (10, 5, 9.9),
    (13, 3, 8.0),
    (13, 4, 7.2),
    (14, 2, 8.5),
    (14, 3, 8.9),
    (14, 4, 8.9);

select s.title, r.rating
from series s
    JOIN reviews r on s.id = r.series_id
LIMIT 15;

select s.title, AVG(r.rating) as avg_rating
from series s
    JOIN reviews r on s.id = r.series_id
GROUP BY
    s.title
ORDER BY avg_rating;

select s.title, ROUND(AVG(r.rating), 2) as avg_rating
from series s
    JOIN reviews r on s.id = r.series_id
GROUP BY
    s.title
ORDER BY avg_rating;

select rs.first_name, rs.last_name, r.rating
from reviewers rs
    join reviews r on rs.id = r.reviewer_id;

select CONCAT(
        rs.first_name, ' ', rs.last_name
    ) as Reviewer, ROUND(AVG(r.rating), 2) as avg_rating
from reviewers rs
    join reviews r on rs.id = r.reviewer_id
GROUP BY
    Reviewer
ORDER BY avg_rating;

select title as unreviewed_series
from series
    LEFT JOIN reviews on series.id = reviews.series_id
where
    rating is NULL;

select s.genre, AVG(r.rating) as avg_rating
from series s
    left join reviews r on s.id = r.series_id
GROUP BY
    genre;

select
    rews.first_name,
    rews.last_name,
    IFNULL(count(r.rating), 0) as count,
    IFNULL(MIN(r.rating), 0) as min,
    IFNULL(MAX(r.rating), 0) as max,
    IFNULL(AVG(r.rating), 0) as rating,
    if(
        count(r.rating) > 0,
        'ACTIVE',
        'INACTIVE'
    ) as status
from reviewers rews
    left join reviews r on rews.id = r.reviewer_id
GROUP BY
    first_name,
    last_name;

SELECT
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS status
FROM reviewers
    LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY
    first_name,
    last_name;

select s.title, r.rating, CONCAT(
        rev.first_name, ' ', rev.last_name
    ) as reviewer
from
    series s
    JOIN reviews r on s.id = r.series_id
    join reviewers rev on r.reviewer_id = rev.id
ORDER BY
    s.title;