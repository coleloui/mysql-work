-- sum
SELECT SUM(pages) FROM books;

SELECT author_lname, SUM(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;

-- avg
SELECT AVG(released_year) FROM books;

SELECT AVG(pages) FROM books;

SELECT AVG(stock_quantity) FROM books;

SELECT released_year, AVG(stock_quantity)
FROM books
GROUP BY
    released_year;

SELECT released_year, AVG(stock_quantity), COUNT(*)
FROM books
GROUP BY
    released_year;