SELECT author_fname, author_lname
FROM books
ORDER BY author_fname, author_lname;

SELECT
    author_lname,
    released_year,
    title
FROM books
ORDER BY author_lname DESC, released_year;

SELECT CONCAT(
        author_lname, ' ', author_fname
    ) AS author
FROM books
ORDER BY author;

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE
    author_fname = 'David';

SELECT title, CONCAT(
        author_fname, ' ', author_lname
    ) AS author
FROM books
WHERE
    author_fname LIKE '%da%';

SELECT * FROM books WHERE title LIKE '%:%';

SELECT * FROM books WHERE author_fname LIKE '____';

DELETE FROM books
WHERE
    title IN (
        SELECT title
        from books
        GROUP BY
            title
        HAVING
            COUNT(*) > 1
    );

SELECT * FROM books WHERE author_fname LIKE '%n';

SELECT * FROM books WHERE title LIKE '%\%%';