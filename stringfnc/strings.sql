USE book_shop;

-- concat
SELECT CONCAT(
        author_fname, ' ', author_lname
    ) AS author_name
FROM books;

SELECT CONCAT_WS(
        ' ', author_fname, author_lname
    ) AS author_name
FROM books;

-- substring
SELECT SUBSTRING('Hello World', 1, 5);

SELECT CONCAT(SUBSTR(title, 1, 10), '...') FROM books;