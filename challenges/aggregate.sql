SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, AVG(released_year)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT CONCAT(
        author_fname, ' ', author_lname
    ), pages
FROM books
WHERE
    pages = (
        SELECT MAX(pages)
        FROM books
    );

SELECT released_year, COUNT(*) as '# books', AVG(pages) as 'avg pages'
FROM books
GROUP BY
    released_year;