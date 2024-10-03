SELECT * FROM books WHERE released_year != 2017;

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE
    author_lname != 'Gaiman';

SELECT title FROM books WHERE title NOT LIKE '% %';

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE
    author_fname NOT LIKE 'da%';

SELECT title FROM books WHERE title NOT LIKE '%e%';

SELECT * FROM books WHERE released_year > 2010;

SELECT * FROM books WHERE pages > 500;

SELECT 99 > 1;