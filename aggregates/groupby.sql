SELECT author_lname FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*) AS books_written
FROM books
GROUP BY
    author_lname
ORDER BY books_written DESC;

SELECT released_year FROM books;

SELECT released_year, COUNT(*) AS count
FROM books
GROUP BY
    released_year
ORDER BY count DESC;

-- multiple columns
SELECT author_lname, COUNT(*)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT CONCAT(
        SUBSTR(author_fname, 1, 1), '. ', author_lname
    ) as author, COUNT(*)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT CONCAT(
        SUBSTR(author_fname, 1, 1), '. ', author_lname
    ) as author, COUNT(*)
FROM books
GROUP BY
    author;