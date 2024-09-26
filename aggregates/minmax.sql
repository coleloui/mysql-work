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
        FROM bookss
    );

-- group by with min max
SELECT author_fname, author_lname, MIN(released_year)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT author_fname, author_lname, MAX(released_year)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT
    CONCAT(
        SUBSTR(author_fname, 1, 1),
        '. ',
        author_lname
    ) AS author,
    COUNT(*) AS books_written,
    MIN(released_year) AS earliest_release,
    MAX(released_year) AS latest_release,
    MAX(pages) AS longest_book
FROM books
GROUP BY
    author_lname,
    author_fname;