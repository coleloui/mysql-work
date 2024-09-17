SELECT MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT MIN(author_lname) FROM books;

-- subqueries
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT * FROM books WHERE pages = ( SELECT MIN(pages) FROM books );

SELECT title, pages
FROM books
WHERE
    pages = (
        SELECT MAX(pages)
        FROM books
    );

SELECT title, released_year
FROM books
WHERE
    released_year = (
        SELECT MIN(released_year)
        FROM books
    );