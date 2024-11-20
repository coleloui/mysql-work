SELECT 10 != 10;

SELECT 15 > 14 AND 99 -5 <= 94;

SELECT 1 in (5, 3) OR 9 BETWEEN 8 AND 10;

SELECT * FROM books WHERE released_year < 1980;

SELECT *
FROM books
WHERE
    author_lname = 'Eggers'
    or author_lname = 'Chabon';

SELECT *
FROM books
WHERE
    author_lname = 'Lahiri'
    AND released_year > 2000;

SELECT * FROM books WHERE pages BETWEEN 100 and 200;

SELECT *
FROM books
WHERE
    author_lname LIKE 'C%'
    OR author_lname LIKE 'S%';

SELECT title, author_lname
FROM books
WHERE
    SUBSTR(author_lname, 1, 1) in ('C', 'S');

SELECT
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids'
        OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

SELECT
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END
FROM books
WHERE
    author_lname IS NOT NULL
GROUP BY
    author_fname,
    author_lname